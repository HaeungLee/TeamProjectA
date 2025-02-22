package pass;

import java.security.MessageDigest;

public class PasswordUtil {
    public static String hashPassword(String password) throws Exception {
        java.security.MessageDigest md = java.security.MessageDigest.getInstance("SHA-256");
        md.update(password.getBytes());
        byte[] digest = md.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(String.format("%02x", b & 0xff));
        }
        return sb.toString();
    }


public static boolean verifyPassword(String inputPassword, String hashedPasswordFromDB) throws Exception {
	    String hashedInputPassword = hashPassword(inputPassword);
	    return hashedInputPassword.equals(hashedPasswordFromDB);
}
}