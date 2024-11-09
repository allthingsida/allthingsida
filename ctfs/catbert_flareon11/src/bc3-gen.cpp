#include <stdio.h>
#include <stdint.h>
#include <string.h>

#define MAGIC3 0x0F910374  // Target Adler-32 checksum value
#define MOD_ADLER 65521    // Largest prime < 2^16
#define PASSWORD_LENGTH 8  // We want an 8-byte password

// Function to compute Adler-32 checksum
uint32_t adler32(const char *data, size_t len) 
{
    uint32_t a = 1;
    uint32_t b = 0;

    for (size_t i = 0; i < len; i++) 
    {
        a = (a + data[i]) % MOD_ADLER;
        b = (b + a) % MOD_ADLER;
    }
    return (b << 16) | a;
}

void brute_force_adler32() 
{
    const char charset[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_";
    size_t charset_size = strlen(charset);
    char password[PASSWORD_LENGTH + 1];  // +1 for null terminator

    unsigned __int64 progress = 1;
    for (size_t i1 = 0; i1 < charset_size; i1++) {
        for (size_t i2 = 0; i2 < charset_size; i2++) {
            for (size_t i3 = 0; i3 < charset_size; i3++) {
                for (size_t i4 = 0; i4 < charset_size; i4++) {
                    for (size_t i5 = 0; i5 < charset_size; i5++) {
                        for (size_t i6 = 0; i6 < charset_size; i6++) {
                            for (size_t i7 = 0; i7 < charset_size; i7++) {
                                for (size_t i8 = 0; i8 < charset_size; i8++) {
                                    // Construct the password
                                    password[0] = charset[i1];
                                    password[1] = charset[i2];
                                    password[2] = charset[i3];
                                    password[3] = charset[i4];
                                    password[4] = charset[i5];
                                    password[5] = charset[i6];
                                    password[6] = charset[i7];
                                    password[7] = charset[i8];
                                    password[8] = '\0';
                                    if (progress > 0x10000000)
                                    {
                                        printf("Progress: %llu\n", progress);
                                        progress = 0;
                                    }

                                    // Calculate the Adler-32 checksum
                                    uint32_t hash = adler32(password, PASSWORD_LENGTH);

                                    // Check if it matches MAGIC3
                                    if (hash == MAGIC3) {
                                        printf("Password found: %s\n", password);
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    printf("Password not found.\n");
}

int main() {
    printf("Brute forcing Adler-32 checksum for alpha numberic 8 characters matching hash value %x\n", MAGIC3);
    brute_force_adler32();
    return 0;
}
