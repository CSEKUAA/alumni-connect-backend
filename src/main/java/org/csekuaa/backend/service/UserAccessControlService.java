package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.rbac.PermissionDTO;
import org.csekuaa.backend.model.dto.rbac.RoleDTO;
import org.csekuaa.backend.model.entity.Menu;
import org.csekuaa.backend.model.entity.Role;
import org.csekuaa.backend.model.entity.User;
import org.csekuaa.backend.repository.MenuRepository;
import org.csekuaa.backend.repository.RoleRepository;
import org.csekuaa.backend.repository.UserRepository;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserAccessControlService {
    private final RoleRepository roleRepository;
    private final UserRepository userRepository;
    private final MenuRepository menuRepository;
    private final UserDetailsParser detailsParser;
    public void addRoleToUser(Integer userId,String roleName) {
        Role role = roleRepository.findByRoleName(roleName).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        User user = userRepository.findById(userId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
        user.addRole(role);
        userRepository.save(user);
    }

    public void removeRoleFromUser(Integer userId, String roleName) {
        Role role = roleRepository.findByRoleName(roleName).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        User user = userRepository.findById(userId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
        user.removeRole(role);
        userRepository.save(user);
    }

    public List<RoleDTO> getAllUserRoles() {
        return roleRepository.findAll()
                .stream()
                .map(this::mapToRoleDTO).toList();
    }

    private RoleDTO mapToRoleDTO(Role role) {
        RoleDTO roleDTO = new RoleDTO();
        roleDTO.setRole(role.getRoleName());
        roleDTO.setPermissions(getRolePermission(role));
        return roleDTO;
    }

    private List<PermissionDTO> getRolePermission(Role role) {
        return role.getMenus().stream()
                .map(this::convertToPermissionDTO).toList();
    }

    private  PermissionDTO convertToPermissionDTO(Menu e) {
        PermissionDTO permission = new PermissionDTO();
        permission.setName(e.getMenuName());
        permission.setParentId(e.getParentMenuId());
        permission.setOrder(e.getMenuOrder());
        permission.setLink(e.getMenuLink());
        return permission;
    }

    public List<RoleDTO> getCurrentUserRoles() {
        int currentUserId = detailsParser.getCurrentUseId();
        return getUserRoles(currentUserId);
    }

    public List<RoleDTO> getUserRoles(Integer userId) {
        User user = userRepository.findById(userId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
        return user.getRoles().stream()
                .map(this::mapToRoleDTO).toList();
    }

    public void addMenuToRole(String roleName, String menuName) {
        Role role = roleRepository.findByRoleName(roleName)
                .orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        Menu menu = menuRepository.findByMenuName(menuName).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("menu.not.found")));
        role.addMenu(menu);
        roleRepository.save(role);
    }

    public void removeMenuFromRole(String roleName, String menuName) {
        Role role = roleRepository.findByRoleName(roleName)
                .orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        Menu menu = menuRepository.findByMenuName(menuName).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("menu.not.found")));
        role.removeMenu(menu);
        roleRepository.save(role);
    }

    public void createMenu(PermissionDTO menuDto) {
        Menu menu = new Menu();
        menu.setMenuId(menuDto.getMenuId());
        menu.setMenuName(menuDto.getName());
        menu.setParentMenuId(menuDto.getParentId());
        menu.setMenuOrder(menuDto.getOrder());
        menu.setMenuLink(menuDto.getLink());
        menu.setActive(true);
        menuRepository.save(menu);
    }

    public void updateMenuVisibility(String menuName) {
        Menu menu = menuRepository.findByMenuName(menuName)
                .orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("menu.not.found")));
        menu.setActive(!menu.isActive());
        menuRepository.save(menu);
    }

    public List<PermissionDTO> getCurrentUserMenus() {
        int currentUserId = detailsParser.getCurrentUseId();
        User user = userRepository.findById(currentUserId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
        return user.getRoles().stream()
                .map(Role::getMenus)
                .flatMap(Collection::stream)
                .map(this::convertToPermissionDTO).toList();
    }
}
