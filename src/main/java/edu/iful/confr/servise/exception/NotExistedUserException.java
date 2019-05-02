package edu.iful.confr.servise.exception;


public class NotExistedUserException extends IllegalStateException {

    public NotExistedUserException(String email) {

        super("User with email: "+ email +" does not exist.");
    }
}