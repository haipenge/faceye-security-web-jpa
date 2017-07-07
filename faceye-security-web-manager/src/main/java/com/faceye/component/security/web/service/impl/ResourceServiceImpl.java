package com.faceye.component.security.web.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Service;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.PathMatcher;

import com.faceye.component.security.web.entity.Resource;
import com.faceye.component.security.web.repository.jpa.ResourceRepository;
import com.faceye.component.security.web.service.ResourceService;
import com.faceye.component.security.web.service.RoleService;
import com.faceye.feature.service.impl.BaseServiceImpl;
import com.faceye.feature.util.regexp.RegexpUtil;

@Service("webResourceService")
public class ResourceServiceImpl extends BaseServiceImpl<Resource, Long, ResourceRepository>
		implements ResourceService, FilterInvocationSecurityMetadataSource {
	private PathMatcher pathMatcher = new AntPathMatcher();
	@Autowired
	private RoleService roleService = null;
	// 权限判断URL集合
	private List<Resource> resources = null;
	// 上一次刷新resourcs集合的时间
	private static Long LAST_REFRESH_RESOURCE_TIMESTAMP = 0L;
	// 缓存有效时间,5分趾
	private static Long CACHE_RESOURCE_EXPIRE_TIME_SECONDS = 5 * 60 * 1000L;

	@Autowired
	public ResourceServiceImpl(ResourceRepository dao) {
		super(dao);
		if (CollectionUtils.isEmpty(resources)) {
			resources = dao.findAll();
		}
	}

	@Override
	public void remove(Long id) {
		Resource resource = this.get(id);
		this.remove(resource);
	}

	@Override
	public void remove(Resource entity) {
		dao.delete(entity);
	}

	@Override
	public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
		String url = ((FilterInvocation) object).getRequestUrl();
		logger.debug(">>FaceYe -->Security-->,filter url is:" + url);
		boolean isIgnore = this.isUrlIgnore(url);
		if (!isIgnore) {
			this.refreshCacheResources();
			if (CollectionUtils.isNotEmpty(resources)) {
				for (Resource r : resources) {
					String _url = r.getUrl();
					if (StringUtils.isNotEmpty(_url) && !_url.endsWith("\\*")) {
						_url += "**";
						if (pathMatcher.match(_url, url)) {
							return r.getAttributes();
						}
					}
				}
			}
		} else {
			logger.debug(">>FaceYe security ignore url :" + url);
		}
		return null;
	}

	/**
	 * 是否忽略的URL权限限制
	 * 
	 * @param url
	 * @return
	 */
	private boolean isUrlIgnore(String url) {
		boolean res = false;
		String[] ignoreUrls = this.ignoringUrls();
		for (String regexp : ignoreUrls) {
			res = pathMatcher.match(regexp, url);
			if (res) {
				break;
			}
		}
		return res;
	}

	/**
	 * 被忽略权限的URL
	 * 
	 * @return
	 */
	private String[] ignoringUrls() {
		String[] ignoringUrls = null;
		List<String> items = new ArrayList<String>();
		items.add("/static/**");
		items.add("/public/**");
		items.add("/images/**");
		items.add("/js/**");
		items.add("/css/**");
		items.add("*.js");
		items.add("*.css");
		items.add("*.jpg");
		items.add("*.png");
		items.add("*.gif");
		items.add("favor.ico");
		ignoringUrls = items.toArray(new String[items.size()]);
		return ignoringUrls;
	}

	@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {
		Collection<ConfigAttribute> allAttributes = null;
		allAttributes = this.roleService.getAllConfigAttributes();
		return allAttributes;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return true;
	}

	@Override
	public Resource getResourceByUrl(String url) {
		return this.dao.getResourceByUrl(url);
	}

	/**
	 * 刷新Resource缓存
	 */
	private void refreshCacheResources() {
		boolean isRefresh = this.isNeedRefreshCacheResources();
		if (isRefresh) {
			resources = this.dao.findAll();
			this.LAST_REFRESH_RESOURCE_TIMESTAMP = System.currentTimeMillis();
		}
	}

	private boolean isNeedRefreshCacheResources() {
		boolean res = false;
		if (LAST_REFRESH_RESOURCE_TIMESTAMP == 0 || System.currentTimeMillis()
				- this.LAST_REFRESH_RESOURCE_TIMESTAMP > this.CACHE_RESOURCE_EXPIRE_TIME_SECONDS) {
			res = true;
		}
		return res;
	}

}/** @generate-service-source@ **/
