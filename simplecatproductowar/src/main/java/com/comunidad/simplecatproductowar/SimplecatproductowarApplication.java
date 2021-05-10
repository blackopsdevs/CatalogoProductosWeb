package com.comunidad.simplecatproductowar;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ComponentScan(basePackages = "com.comunidad.simplecatproductowar")
@ImportResource({"classpath*:com/comunidad/simplecatproductowar/**/*Dao.xml"})
public class SimplecatproductowarApplication {

    public static void main(String[] args) {
        SpringApplication.run(SimplecatproductowarApplication.class, args);
    }

}
