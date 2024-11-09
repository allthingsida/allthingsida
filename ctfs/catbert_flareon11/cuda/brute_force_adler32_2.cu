#include <cuda_runtime.h>
#include <stdio.h>
#include <chrono>
#include <thread>

#define PASSWORD_LENGTH 8
#define CHARSET_SIZE 26
#define MAX_SOLUTIONS 1024 // Maximum number of solutions buffer size

// Constants and charset for the kernel
__device__ const char charset[CHARSET_SIZE + 1] = "abcdefghijklmnopqrstuvwxyz";
__device__ const uint32_t MOD_ADLER = 65521;  // Largest prime < 2^16

// Compute Adler-32 checksum
__device__ uint32_t adler32(const char *data, size_t len) {
    uint32_t a = 1, b = 0;
    for (size_t i = 0; i < len; i++) {
        a = (a + data[i]) % MOD_ADLER;
        b = (b + a) % MOD_ADLER;
    }
    return (b << 16) | a;
}

// CUDA kernel to check each possible password
__global__ void find_passwords(uint32_t target, char *results, int *flags) {
    // Calculate global index for each thread
    uint64_t idx = blockIdx.x * blockDim.x + threadIdx.x;

    // Generate an 8-character password based on the thread's index
    char candidate[PASSWORD_LENGTH + 1];
    uint64_t temp_idx = idx;

    // Decode the index into a password
    for (int i = 0; i < PASSWORD_LENGTH; i++) {
        candidate[i] = charset[temp_idx % CHARSET_SIZE];
        temp_idx /= CHARSET_SIZE;
    }
    candidate[PASSWORD_LENGTH] = '\0';  // Null-terminate the string

    // Check the Adler-32 checksum
    if (adler32(candidate, PASSWORD_LENGTH) == target) {
        // Find an available slot
        for (int pos = 0; pos < MAX_SOLUTIONS; pos++) {
            if (atomicCAS(&flags[pos], 0, 1) == 0) {  // Reserve slot
                // Store the result
                for (int i = 0; i < PASSWORD_LENGTH; i++) {
                    results[pos * PASSWORD_LENGTH + i] = candidate[i];
                }
                atomicExch(&flags[pos], 2);  // Mark as filled
                break;
            }
        }
    }
}

// Host function to launch the CUDA kernel and poll for results
void launch_brute_force(uint32_t target) {
    // Allocate memory for results and flags on the device
    char *d_results;
    int *d_flags;
    cudaMalloc((void**)&d_results, MAX_SOLUTIONS * PASSWORD_LENGTH * sizeof(char));
    cudaMalloc((void**)&d_flags, MAX_SOLUTIONS * sizeof(int));
    cudaMemset(d_flags, 0, MAX_SOLUTIONS * sizeof(int));

    // Kernel launch configuration
    uint64_t total_combinations = pow(CHARSET_SIZE, PASSWORD_LENGTH);
    int threads_per_block = 256;
    int blocks = (total_combinations + threads_per_block - 1) / threads_per_block;

    // Launch the kernel asynchronously
    find_passwords<<<blocks, threads_per_block>>>(target, d_results, d_flags);

    // Host polling loop to check for results
    char h_results[PASSWORD_LENGTH + 1];
    h_results[PASSWORD_LENGTH] = '\0';  // Null-terminate for safe printing

    printf("Searching for passwords matching the checksum...\n");
    while (true) {
        bool any_found = false;

        // Check each slot in the flags array
        for (int i = 0; i < MAX_SOLUTIONS; i++) {
            int flag;
            cudaMemcpy(&flag, &d_flags[i], sizeof(int), cudaMemcpyDeviceToHost);

            if (flag == 2) {  // Result available
                // Copy the result from device to host
                cudaMemcpy(h_results, &d_results[i * PASSWORD_LENGTH], PASSWORD_LENGTH * sizeof(char), cudaMemcpyDeviceToHost);

                // Print the password
                printf("found: %s\n", h_results);
                
                // Mark slot as empty again for reuse
                int zero = 0;
                cudaMemcpy(&d_flags[i], &zero, sizeof(int), cudaMemcpyHostToDevice);
                
                any_found = true;
            }
        }

        if (!any_found) {
            // Sleep for a short time to avoid busy waiting
            std::this_thread::sleep_for(std::chrono::milliseconds(100));
        }
    }

    // Free device memory
    cudaFree(d_results);
    cudaFree(d_flags);
}

#define MAGIC3 0x0F910374  // Target Adler-32 checksum

int main() {
    // Call the brute-force function with the target Adler-32 checksum
    launch_brute_force(MAGIC3);
    return 0;
}
