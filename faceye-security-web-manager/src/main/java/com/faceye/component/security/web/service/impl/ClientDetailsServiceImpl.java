package com.faceye.component.security.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.faceye.component.security.web.entity.ClientDetails;
import com.faceye.component.security.web.repository.jpa.ClientDetailsRepository;
import com.faceye.component.security.web.service.ClientDetailsService;
import com.faceye.feature.service.impl.BaseServiceImpl;

@Service
@Transactional
public class ClientDetailsServiceImpl extends BaseServiceImpl<ClientDetails, String, ClientDetailsRepository> implements ClientDetailsService {

	@Autowired
	public ClientDetailsServiceImpl(ClientDetailsRepository dao) {
		super(dao);
	}


}
