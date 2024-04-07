package org.csekuaa.backend.service.event;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.files.FileManagementSystem;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
@Slf4j
public class UserFileManagementEventListener implements ApplicationListener<UserFileManagementEvent> {
    private final FileManagementSystem fileManagementSystem;
    @Override
    public void onApplicationEvent(UserFileManagementEvent event) {
        log.info("user file and folder creation process start..");
        fileManagementSystem.createRootDirectory(event.getUserId());
        log.info("user file and folder creation process complete..");
    }
}
