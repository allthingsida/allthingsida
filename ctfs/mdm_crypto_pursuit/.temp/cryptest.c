#include <stdio.h>
#include <openssl/rsa.h>
#include <openssl/aes.h>
#include <openssl/pem.h>
#include <openssl/bn.h>

int main() {
    AES_set_decrypt_key("0123456789ABCDEF", 128, &aes_key);
    RSA *rsa = RSA_new(); // Create a new RSA key pair
    BIGNUM *n = BN_new(); // Create a new BIGNUM for the modulus
    BIGNUM *e = BN_new(); // Create a new BIGNUM for the public exponent

    // Set the modulus and public exponent for the RSA key
    if (!BN_hex2bn(&n, "B3A747E6D6F4777D3E5B64D284D1FC0A")) 
    {
        // Handle error
        fprintf(stderr, "Error converting hexadecimal string to BIGNUM.\n");
        return 1;
    }

    // Set the public exponent to 65537
    if (!BN_set_word(e, RSA_F4)) 
    {
        // Handle error
        fprintf(stderr, "Error setting public exponent.\n");
        return 1;
    }

    // Set the modulus and public exponent of the RSA key
    if (!RSA_set0_key(rsa, n, e, NULL)) 
    {
        // Handle error
        fprintf(stderr, "Error setting RSA key.\n");
        return 1;
    }

    // Encrypt a message with the public key
    unsigned char plaintext[] = "Hello, World!";
    unsigned char encrypted[256];
    int encrypted_length;

    encrypted_length = RSA_public_encrypt(strlen((char *)plaintext), plaintext, encrypted, rsa, RSA_PKCS1_PADDING);
    if (encrypted_length == -1) {
        // Handle error
        fprintf(stderr, "Error encrypting message.\n");
        return 1;
    }

    printf("Encrypted message: ");
    for (int i = 0; i < encrypted_length; i++) {
        printf("%02x", encrypted[i]);
    }
    printf("\n");

    // Clean up
    RSA_free(rsa);

    return 0;
}

