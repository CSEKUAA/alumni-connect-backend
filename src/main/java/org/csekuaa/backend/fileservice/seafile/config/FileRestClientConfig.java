package org.csekuaa.backend.fileservice.seafile.config;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import org.csekuaa.backend.service.exception.RestClientErrorHandler;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestClient;

@Configuration
public class FileRestClientConfig {

    @Value("${file.server.url}")
    private String baseUrl;
    @Bean(name = "fileClient")
    public RestClient createFileRestClient() {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.disable(SerializationFeature.FAIL_ON_EMPTY_BEANS);
        MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter(objectMapper);
        return RestClient.builder()
                .baseUrl(baseUrl)
                .messageConverters(converters -> converters.add(converter))
                .defaultStatusHandler(new RestClientErrorHandler())
                .build();
    }

}
