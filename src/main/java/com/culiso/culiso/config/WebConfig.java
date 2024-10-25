package com.culiso.culiso.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // "/images/**" 경로로 요청된 리소스는 "classpath:/images/" 디렉토리에서 찾는다.
        registry.addResourceHandler("/images/**")
                .addResourceLocations("file:/app/src/main/resources/images/")
                .setCachePeriod(100); // 캐시 기간을 초 단위로 설정
    }
}
