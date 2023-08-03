package kuaa.backend.api.service;


import kuaa.backend.api.dto.request.CreateUser;

public interface UserManagementService {
    void createUser(CreateUser createUser);
}
