package com.codeup.adlister;

import org.mindrot.jbcrypt.BCrypt;

public class TestPasswords {

    public static void main(String[] args) {

        String pass = "fer1990";
        String hash = BCrypt.hashpw(pass, BCrypt.gensalt());
        System.out.println("pass = " + pass);
        System.out.println("hash = " + hash);

        boolean valid = BCrypt.checkpw(pass, hash);

        System.out.println("valid = " + valid);

        valid = BCrypt.checkpw(pass+"1", hash);

        System.out.println("valid = " + valid);




    }
}
