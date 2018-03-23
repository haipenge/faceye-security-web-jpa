package com.faceye.test.component.security.web.service;

import javax.transaction.Transactional;

import org.eclipse.core.runtime.Assert;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;

import com.faceye.component.security.web.service.SecurityInitService;
import com.faceye.test.feature.service.BaseServiceTestCase;

public class SecurityInitServiceTestCase extends BaseServiceTestCase {

	@Autowired
	private SecurityInitService securityInitService=null;
	@Before
	public void set(){
//		this.securityInitService.clear();
	}
	@After
	public void after(){
//		this.securityInitService.clear();
	}
	@Test
	@Rollback(false)
	public void testIsInited() throws Exception{
		boolean isInit=this.securityInitService.isInited();
		Assert.assertTrue(!isInit);
	}
	@Test
	@Transactional
	@Rollback(false)
	public void testInit() throws Exception{
		this.securityInitService.init();
		boolean isInited=this.securityInitService.isInited();
		Assert.assertTrue(isInited);
	}
	@Test
	public void testClear() throws Exception{
		this.securityInitService.clear();
		boolean isInited=this.securityInitService.isInited();
		Assert.assertTrue(!isInited);
	}
}
