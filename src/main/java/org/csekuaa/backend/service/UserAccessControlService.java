package org.csekuaa.backend.service;

import lombok.RequiredArgsConstructor;
import org.csekuaa.backend.model.dto.exception.ResourceNotFoundException;
import org.csekuaa.backend.model.dto.rbac.MenuDTO;
import org.csekuaa.backend.model.dto.rbac.PermissionDTO;
import org.csekuaa.backend.model.dto.rbac.RoleDTO;
import org.csekuaa.backend.model.dto.rbac.RoleWithPermissionDTO;
import org.csekuaa.backend.model.entity.Menu;
import org.csekuaa.backend.model.entity.Role;
import org.csekuaa.backend.model.entity.User;
import org.csekuaa.backend.repository.MenuRepository;
import org.csekuaa.backend.repository.RoleRepository;
import org.csekuaa.backend.repository.UserRepository;
import org.csekuaa.backend.service.message.ApplicationMessageResolver;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserAccessControlService {
    private final RoleRepository roleRepository;
    private final UserRepository userRepository;
    private final MenuRepository menuRepository;
    private final UserDetailsParser detailsParser;
    public void addRoleToUser(Integer userId,Integer roleId) {
        Role role = roleRepository.findByRoleId(roleId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        User user = userRepository.findById(userId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
        user.addRole(role);
        userRepository.save(user);
    }

    public void removeRoleFromUser(Integer userId, Integer roleId) {
        Role role = roleRepository.findByRoleId(roleId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        User user = userRepository.findById(userId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
        user.removeRole(role);
        userRepository.save(user);
    }

    public List<RoleWithPermissionDTO> getAllUserRoles() {
        return roleRepository.findAll()
                .stream()
                .map(this::mapToRoleDTO).toList();
    }

    private RoleWithPermissionDTO mapToRoleDTO(Role role) {
        RoleWithPermissionDTO roleWithPermissionDTO = new RoleWithPermissionDTO();
        roleWithPermissionDTO.setRole(role.getRoleName());
        roleWithPermissionDTO.setPermissions(getRolePermission(role));
        return roleWithPermissionDTO;
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
        permission.setIdentifier(e.getIdentifier());
        return permission;
    }

    public List<RoleWithPermissionDTO> getCurrentUserRoles() {
        int currentUserId = detailsParser.getCurrentUseId();
        return getUserRoles(currentUserId);
    }

    public List<RoleWithPermissionDTO> getUserRoles(Integer userId) {
        User user = userRepository.findById(userId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("user.not.found")));
        return user.getRoles().stream()
                .map(this::mapToRoleDTO).toList();
    }

    public void addMenuToRole(Integer roleId, Integer menuId) {
        Role role = roleRepository.findByRoleId(roleId)
                .orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        Menu menu = menuRepository.findByMenuId(menuId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("menu.not.found")));
        role.addMenu(menu);
        roleRepository.save(role);
    }

    public void removeMenuFromRole(Integer roleId, Integer menuId) {
        Role role = roleRepository.findByRoleId(roleId)
                .orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("role.not.found")));
        Menu menu = menuRepository.findByMenuId(menuId).orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("menu.not.found")));
        role.removeMenu(menu);
        roleRepository.save(role);
    }

    public void createMenu(PermissionDTO menuDto) {
        Menu menu = new Menu();
    //    menu.setMenuId(menuDto.getMenuId());
        menu.setMenuName(menuDto.getName());
        menu.setParentMenuId(menuDto.getParentId());
        menu.setMenuOrder(menuDto.getOrder());
        menu.setMenuLink(menuDto.getLink());
        menu.setIsActive(true);
        menu.setIdentifier(menuDto.getIdentifier());
        menuRepository.save(menu);
    }

    public void updateMenuVisibility(Integer menuId) {
        Menu menu = menuRepository.findByMenuId(menuId)
                .orElseThrow(()-> new ResourceNotFoundException(ApplicationMessageResolver.getMessage("menu.not.found")));
        menu.setIsActive(!menu.getIsActive());
        menuRepository.save(menu);
    }

    public List<MenuDTO> getCurrentUserMenus() {
        return menuRepository.findAllByIsActiveTrue().stream()
                .map(e-> {
                    MenuDTO dto = new MenuDTO();
                    dto.setMenuId(e.getMenuId());
                    dto.setMenuName(e.getMenuName());
                    dto.setMenuLink(e.getMenuLink());
                    dto.setIdentifier(e.getIdentifier());
                    return dto;
                }).toList();
    }

    public List<RoleDTO> getAllRoles() {
        return roleRepository.findAll().stream()
                .map(e-> {
                    RoleDTO dto = new RoleDTO();
                    dto.setRoleId(e.getRoleId());
                    dto.setRoleName(e.getRoleName());
                    return dto;
                }).toList();
    }
}
