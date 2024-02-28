package org.csekuaa.backend.annotation.implementation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.csekuaa.backend.annotation.RollNumber;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RollNumberValidator implements ConstraintValidator<RollNumber, String> {
    private final String alumniId = "^[0-9]{6}$";
    @Override
    public void initialize(RollNumber constraintAnnotation) {
        ConstraintValidator.super.initialize(constraintAnnotation);
    }

    @Override
    public boolean isValid(String roll, ConstraintValidatorContext constraintValidatorContext) {
        Pattern pattern = Pattern.compile(alumniId);
        Matcher matcher = pattern.matcher(roll);
        return matcher.matches();
    }
}
