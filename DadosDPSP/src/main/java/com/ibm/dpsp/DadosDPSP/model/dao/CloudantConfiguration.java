/*
 * Copyright © 2017 IBM Corp. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the
 * License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language governing permissions
 * and limitations under the License.
 */

package com.ibm.dpsp.DadosDPSP.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;

import com.cloudant.client.api.ClientBuilder;
import com.cloudant.client.api.CloudantClient;
import com.cloudant.client.api.Database;

//@Configuration
@EnableConfigurationProperties(CloudantConfigurationProperties.class)
public class CloudantConfiguration {
	@Autowired
	private CloudantConfigurationProperties config;

	@Bean
	@Primary
	public CloudantClient client() {
		ClientBuilder builder = ClientBuilder
			.url(config.getUrl())
			.username(config.getUsername())
			.password(config.getPassword());
		return builder.build();
	}

	@Bean
	@Primary
	public Database database(CloudantClient client) {
		Database db = client.database(config.getDb(), true);
		return db;
	}

}
