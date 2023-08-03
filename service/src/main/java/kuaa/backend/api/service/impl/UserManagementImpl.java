package kuaa.backend.api.service.impl;

import kuaa.backend.api.dto.request.CreateUser;
import kuaa.backend.api.service.UserManagementService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class UserManagementImpl implements UserManagementService {
    @Override
    public void createUser(CreateUser createUser) {
        log.info("method call");
    }
}
