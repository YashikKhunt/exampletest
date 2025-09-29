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
package org.example;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import java.security.SecureRandom;
import java.util.Base64;

public class test {

    public static void main(String[] args) {
        String originalText = "Sensitive Information";

        try {
            KeyGenerator keyGen = KeyGenerator.getInstance("AES");
            keyGen.init(256, SecureRandom.getInstanceStrong());
            SecretKey secretKey = keyGen.generateKey();

            SecureRandom random = SecureRandom.getInstanceStrong();
            byte[] iv = new byte[12];
            random.nextBytes(iv);

            GCMParameterSpec gcmSpec = new GCMParameterSpec(128, iv);

            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey, gcmSpec);
            byte[] cipherText = cipher.doFinal(originalText.getBytes());

            byte[] ivAndCipherText = new byte[iv.length + cipherText.length];
            System.arraycopy(iv, 0, ivAndCipherText, 0, iv.length);
            System.arraycopy(cipherText, 0, ivAndCipherText, iv.length, cipherText.length);

            String encodedCipherText = Base64.getEncoder().encodeToString(ivAndCipherText);
            System.out.println("Encrypted Text: " + encodedCipherText);

            byte[] decoded = Base64.getDecoder().decode(encodedCipherText);
            byte[] ivDecoded = new byte[12];
            byte[] cipherTextDecoded = new byte[decoded.length - 12];
            System.arraycopy(decoded, 0, ivDecoded, 0, 12);
            System.arraycopy(decoded, 12, cipherTextDecoded, 0, cipherTextDecoded.length);

            GCMParameterSpec gcmSpec2 = new GCMParameterSpec(128, ivDecoded);

            Cipher cipher2 = Cipher.getInstance("AES/GCM/NoPadding");
            cipher2.init(Cipher.DECRYPT_MODE, secretKey, gcmSpec2);
            byte[] decryptedText = cipher2.doFinal(cipherTextDecoded);

            System.out.println("Decrypted Text: " + new String(decryptedText));
        } catch (Exception e) {
            System.err.println("Error during encryption/decryption: " + e.getMessage());
        }
    }
}


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


