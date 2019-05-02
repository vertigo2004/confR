package edu.iful.confr.servise.exception;

public class NotExistedTopicException extends IllegalStateException {

    public NotExistedTopicException(Long id) {

        super("Topic with ID: " + id +" does not exist.");
    }
}