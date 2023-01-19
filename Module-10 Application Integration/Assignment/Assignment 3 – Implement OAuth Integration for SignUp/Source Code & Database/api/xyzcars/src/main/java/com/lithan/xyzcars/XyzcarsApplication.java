package com.lithan.xyzcars;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import com.lithan.xyzcars.config.AppProperties;

@SpringBootApplication
@EnableConfigurationProperties(AppProperties.class)
public class XyzcarsApplication {

	public static void main(String[] args) {
		SpringApplication.run(XyzcarsApplication.class, args);
	}

}
