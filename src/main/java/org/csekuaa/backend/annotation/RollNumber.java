package org.csekuaa.backend.annotation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;
import org.csekuaa.backend.annotation.implementation.RollNumberValidator;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
@Constraint(validatedBy = RollNumberValidator.class)
@Documented
public @interface RollNumber {
    String message() default "invalid roll number pattern!";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
