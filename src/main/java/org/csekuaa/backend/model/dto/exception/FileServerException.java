package org.csekuaa.backend.model.dto.exception;

public class FileServerException extends RuntimeException {
    public FileServerException(String message){
        super(message);
    }
}
