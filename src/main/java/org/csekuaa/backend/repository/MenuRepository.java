package org.csekuaa.backend.repository;

import org.csekuaa.backend.model.entity.Menu;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface MenuRepository extends JpaRepository<Menu, Integer> {
    Optional<Menu> findByMenuName(String name);
}
