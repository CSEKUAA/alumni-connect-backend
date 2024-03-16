package org.csekuaa.backend.annotation.implementation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.csekuaa.backend.annotation.RollNumber;
import org.csekuaa.backend.util.ApplicationConstant;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RollNumberValidator implements ConstraintValidator<RollNumber, String> {
    @Override
    public void initialize(RollNumber constraintAnnotation) {
        ConstraintValidator.super.initialize(constraintAnnotation);
    }

    @Override
    public boolean isValid(String roll, ConstraintValidatorContext constraintValidatorContext) {
        Pattern pattern = Pattern.compile(ApplicationConstant.ALUMNI_ID);
        Matcher matcher = pattern.matcher(roll);
        return matcher.matches();
    }
}
