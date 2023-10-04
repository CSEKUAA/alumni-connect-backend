package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.Token;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface TokenRepository extends JpaRepository<Token, Integer> {

    Optional<Token> findByTokenName(String token);
}
