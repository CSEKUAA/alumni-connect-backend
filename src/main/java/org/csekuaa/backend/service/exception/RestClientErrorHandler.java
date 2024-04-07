package org.csekuaa.backend.service.exception;

import lombok.extern.slf4j.Slf4j;
import org.csekuaa.backend.model.dto.exception.FileServerException;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.web.client.ResponseErrorHandler;

import java.io.IOException;

@Slf4j
public class RestClientErrorHandler implements ResponseErrorHandler {
    @Override
    public boolean hasError(ClientHttpResponse response) {
        return true;
    }

    @Override
    public void handleError(ClientHttpResponse response) throws IOException {
        if(!response.getStatusCode().is2xxSuccessful()){
            log.error("error form file server {} ", response.getStatusText());
            //throw new FileServerException("error from file server! "+ response.getStatusText());
        }

    }
}
