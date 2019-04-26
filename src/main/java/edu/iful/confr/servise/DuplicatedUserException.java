package edu.iful.confr.servise;

public class DuplicatedUserException extends IllegalStateException {

    public DuplicatedUserException(String email) {

        super("User with email: "+ email +" exists already.");
    }
}