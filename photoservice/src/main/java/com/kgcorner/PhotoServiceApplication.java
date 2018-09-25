package com.kgcorner;

import brave.sampler.Sampler;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.sleuth.sampler.ProbabilityBasedSampler;
import org.springframework.cloud.sleuth.sampler.SamplerProperties;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class PhotoServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(PhotoServiceApplication.class, args);
	}

	@Bean
	public Sampler getSampler() {
		SamplerProperties properties = new SamplerProperties();
		properties.setProbability(1.0f);
		return new ProbabilityBasedSampler(properties);
	}
}
