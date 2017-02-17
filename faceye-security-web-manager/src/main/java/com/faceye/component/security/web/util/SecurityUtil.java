package com.faceye.component.security.web.util;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.provider.OAuth2Authentication;

/**
 * 安全认证工作类
 * 
 * @author @haipenge haipenge@gmail.com Create Date:2014年7月5日
 */
public class SecurityUtil {
	/**
	 * 取得当前登录用户名 需要HttpSessionEventPublisher支持
	 * 
	 * @return
	 */
	public static String getCurrentUserName() {
		String username = null;
		if (SecurityContextHolder.getContext() != null && SecurityContextHolder.getContext().getAuthentication() != null) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			Object principal = authentication.getPrincipal();
			//以下用于oauth2协议下获取用户信息->ClientDetails
			if (authentication instanceof OAuth2Authentication && (principal instanceof String || principal instanceof org.springframework.security.core.userdetails.User)) {
				OAuth2Authentication oauth2Authentication = (OAuth2Authentication) authentication;
				username = oauth2Authentication.getName();
				// final Collection<GrantedAuthority> authorities = oAuth2Authentication.getAuthorities();
				// for (GrantedAuthority authority : authorities) {
				// userJsonDto.getPrivileges().add(authority.getAuthority());
				// }
			} else {
				if (null != principal) {
					if (principal instanceof UserDetails) {
						username = ((UserDetails) principal).getUsername();
					} else {
						username = principal.toString();
					}
				}
			}
		}
		return username;
	}
}
