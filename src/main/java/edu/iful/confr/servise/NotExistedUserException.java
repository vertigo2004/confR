package edu.iful.confr.servise;


public class NotExistedUserException extends IllegalStateException {

    public NotExistedUserException(String email) {

        super("User with email: "+ email +" does not exist.");
    }
}