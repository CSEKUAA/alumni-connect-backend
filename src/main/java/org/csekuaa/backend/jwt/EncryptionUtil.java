package org.csekuaa.backend.jwt;

import lombok.SneakyThrows;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import java.util.Base64;

public class EncryptionUtil {

    @SneakyThrows
    public static String encryptJWT(String token, SecretKey secretKey)  {
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.ENCRYPT_MODE, secretKey);
        byte[] encryptedBytes = cipher.doFinal(token.getBytes());
        return Base64.getEncoder().encodeToString(encryptedBytes);
    }


    @SneakyThrows
    public static String decryptJWT(String encryptedToken, SecretKey secretKey) {
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(Cipher.DECRYPT_MODE, secretKey);
        byte[] encryptedBytes = Base64.getDecoder().decode(encryptedToken);
        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
        return new String(decryptedBytes);
    }
}
