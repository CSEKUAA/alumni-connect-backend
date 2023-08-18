package org.csekuaa.backend.util.exception;

import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.dto.exception.ResourceNotFoundException;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RestControllerAdvice
  @Slf4j
public class SystemExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
          @ResponseStatus(value = HttpStatus.NOT_FOUND)
    public ErrorMessage resourceNotFoundException(ResourceNotFoundException ex, WebRequest request) {
        return new ErrorMessage(
                HttpStatus.NOT_FOUND,
                LocalDate.now(),
                ex.getMessage(),
                request.getDescription(false));
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public ErrorMessage globalExceptionHandler(Exception ex, WebRequest request) {
        log.error(Arrays.toString(ex.getStackTrace()));
        return new ErrorMessage(
                HttpStatus.INTERNAL_SERVER_ERROR,
                LocalDate.now(),
                "Something went wrong!",
                request.getDescription(false));
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(code = HttpStatus.BAD_REQUEST)
    public ErrorMessage handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
        BindingResult result = e.getBindingResult();
        List<String> fieldValidationErrors = new ArrayList<>();

        result.getFieldErrors().forEach(fieldError -> fieldValidationErrors.add(fieldError.getField()+ " => "+fieldError.getDefaultMessage()));
        return ErrorMessage.builder()
                .date(LocalDate.now())
                .message(String.join("/n", fieldValidationErrors))
                .description(null)
                .statusCode( HttpStatus.BAD_REQUEST)
                .build();
    }
}
