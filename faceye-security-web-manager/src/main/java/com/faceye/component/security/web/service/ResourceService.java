package com.faceye.component.security.web.service;

import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

import com.faceye.component.security.web.entity.Resource;
import com.faceye.feature.service.BaseService;

public interface ResourceService extends BaseService<Resource,Long>,FilterInvocationSecurityMetadataSource{

	public Resource getResourceByUrl(String url);
	
}/**@generate-service-source@**/
