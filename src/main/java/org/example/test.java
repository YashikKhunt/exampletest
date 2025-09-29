package org.example;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.GCMParameterSpec;
import java.security.SecureRandom;
import java.util.Base64;
import java.security.AlgorithmParameters;

public class test {

    public static void main(String[] args) {
        String originalText = "Sensitive Information";

        try {
            // Generate a strong AES key using KeyGenerator
            KeyGenerator keyGen = KeyGenerator.getInstance("AES");
            keyGen.init(256);
            SecretKey secretKey = keyGen.generateKey();

            // Generate a random 12-byte IV for GCM
            byte[] iv = new byte[12];
            SecureRandom random = SecureRandom.getInstanceStrong();
            random.nextBytes(iv);

            // Use AlgorithmParameters to prepare GCMParameterSpec as required by CrySL
            AlgorithmParameters params = AlgorithmParameters.getInstance("GCM");
            params.init(new GCMParameterSpec(128, iv));
            GCMParameterSpec gcmSpec = params.getParameterSpec(GCMParameterSpec.class);

            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey, gcmSpec);
            byte[] cipherText = cipher.doFinal(originalText.getBytes());

            byte[] ivAndCipherText = new byte[iv.length + cipherText.length];
            System.arraycopy(iv, 0, ivAndCipherText, 0, iv.length);
            System.arraycopy(cipherText, 0, ivAndCipherText, iv.length, cipherText.length);

            String encodedCipherText = Base64.getEncoder().encodeToString(ivAndCipherText);
            System.out.println("Encrypted Text: " + encodedCipherText);

            byte[] decoded = Base64.getDecoder().decode(encodedCipherText);
            byte[] ivDec = new byte[12];
            byte[] cipherTextDec = new byte[decoded.length - 12];
            System.arraycopy(decoded, 0, ivDec, 0, 12);
            System.arraycopy(decoded, 12, cipherTextDec, 0, cipherTextDec.length);

            AlgorithmParameters paramsDec = AlgorithmParameters.getInstance("GCM");
            paramsDec.init(new GCMParameterSpec(128, ivDec));
            GCMParameterSpec gcmSpecDec = paramsDec.getParameterSpec(GCMParameterSpec.class);

            Cipher cipherDec = Cipher.getInstance("AES/GCM/NoPadding");
            cipherDec.init(Cipher.DECRYPT_MODE, secretKey, gcmSpecDec);
            byte[] decryptedText = cipherDec.doFinal(cipherTextDec);

            System.out.println("Decrypted Text: " + new String(decryptedText));
        } catch (Exception e) {
            System.err.println("Error during encryption/decryption: " + e.getMessage());
        }
    }
}
