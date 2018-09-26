package com.kgcorner;

import brave.sampler.Sampler;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.sleuth.sampler.SamplerProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.cloud.sleuth.sampler.ProbabilityBasedSampler;


@SpringBootApplication
@EnableDiscoveryClient
public class UserServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(UserServiceApplication.class, args);
	}

	@Bean
	public ProbabilityBasedSampler getProbabilityBasedSampler() {
		SamplerProperties properties = new SamplerProperties();
		properties.setProbability(1.0f);
		return new ProbabilityBasedSampler(properties);
	}
}
