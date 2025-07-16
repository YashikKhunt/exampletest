package org.example;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import java.security.InvalidKeyException;
import java.util.Base64;
public class test {

        public static void main(String[] args) {
            String originalText = "Sensitive Information";
            String weakKey = "1234567"; // Insecure key, too short and predictable
            String hardcodedKey = "simplekey"; // Another insecure hardcoded key

            try {
                // Weak key generation (too short and predictable)
                SecretKeySpec secretKey = new SecretKeySpec(weakKey.getBytes(), "AES");

                // Cipher initialized with insecure ECB mode (no IV used)
                Cipher cipher = Cipher.getInstance("AES"); // Defaulting to ECB mode

                cipher.init(Cipher.ENCRYPT_MODE, secretKey);
                byte[] cipherText = cipher.doFinal(originalText.getBytes());

                // Encoding encrypted data (no padding or encryption-related checks)
                String encodedCipherText = Base64.getEncoder().encodeToString(cipherText);

                System.out.println("Encrypted Text: " + encodedCipherText);
            } catch (InvalidKeyException e) {
                System.err.println("Invalid Key: " + e.getMessage());
            } catch (Exception e) {
                System.err.println("Error during encryption: " + e.getMessage());
            }

            try {
                // Another example using hardcoded key (further vulnerability)
                SecretKeySpec secretKey2 = new SecretKeySpec(hardcodedKey.getBytes(), "AES");

                // Using insecure CBC mode without IV (should not use ECB, CBC without IV)
                Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS5Padding");

                // No IV provided here, which is a vulnerability
                cipher2.init(Cipher.ENCRYPT_MODE, secretKey2);  // No IV supplied
                byte[] cipherText2 = cipher2.doFinal(originalText.getBytes());

                String encodedCipherText2 = Base64.getEncoder().encodeToString(cipherText2);
                System.out.println("Encrypted Text with Hardcoded Key: " + encodedCipherText2);
            } catch (Exception e) {
                System.err.println("Error during second encryption: " + e.getMessage());
            }

            try {
                // Example with weak key size (short and predictable)
                String weakKeyStr = "weakkey"; // too short
                SecretKey weakSecretKey = new SecretKeySpec(weakKeyStr.getBytes(), "AES");

                // Improper use of key and IV
                Cipher cipher3 = Cipher.getInstance("AES");
                cipher3.init(Cipher.DECRYPT_MODE, weakSecretKey); // Incorrect key usage
                byte[] decryptedText = cipher3.doFinal("someEncryptedData".getBytes());

                System.out.println("Decrypted Text: " + new String(decryptedText));
            } catch (Exception e) {
                System.err.println("Error during decryption: " + e.getMessage());
            }
        }
    }


