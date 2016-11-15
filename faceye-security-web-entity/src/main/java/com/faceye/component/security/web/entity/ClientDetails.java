package com.faceye.component.security.web.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="oauth_client_details")
public class ClientDetails implements Serializable {

	/**
	 * @Desc:
	 * @Author:haipenge
	 * @Date:2016年10月23日 下午5:54:14
	 */
	private static final long serialVersionUID = 2368368902656969827L;
	@Id
	@Column(name="client_id")
	private String id="";
	@Column(name="resource_ids")
	private String resourceIds="";
	@Column(name="client_secret")
	private String clientSecret="";
	@Column(name="scope")
	private String scope="";
	@Column(name="authorized_grant_types")
	private String authorizedGrantTypes="";
	@Column(name="web_server_redirect_uri")
	private String webServerRedirectUri="";
	@Column(name="authorities")
	private String authorities="";
	@Column(name="access_token_validity")
	private Integer accessTokenValidity=null;
	@Column(name="refresh_token_validity")
	private Integer refreshTokenValidity=null;
	@Column(name="additional_information")
	private String additionalInformation="";
	@Column(name="autoapprove")
	private String autoapprove="";
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getResourceIds() {
		return resourceIds;
	}
	public void setResourceIds(String resourceIds) {
		this.resourceIds = resourceIds;
	}
	public String getClientSecret() {
		return clientSecret;
	}
	public void setClientSecret(String clientSecret) {
		this.clientSecret = clientSecret;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public String getAuthorizedGrantTypes() {
		return authorizedGrantTypes;
	}
	public void setAuthorizedGrantTypes(String authorizedGrantTypes) {
		this.authorizedGrantTypes = authorizedGrantTypes;
	}
	public String getWebServerRedirectUri() {
		return webServerRedirectUri;
	}
	public void setWebServerRedirectUri(String webServerRedirectUri) {
		this.webServerRedirectUri = webServerRedirectUri;
	}
	public String getAuthorities() {
		return authorities;
	}
	public void setAuthorities(String authorities) {
		this.authorities = authorities;
	}
	public Integer getAccessTokenValidity() {
		return accessTokenValidity;
	}
	public void setAccessTokenValidity(Integer accessTokenValidity) {
		this.accessTokenValidity = accessTokenValidity;
	}
	public Integer getRefreshTokenValidity() {
		return refreshTokenValidity;
	}
	public void setRefreshTokenValidity(Integer refreshTokenValidity) {
		this.refreshTokenValidity = refreshTokenValidity;
	}
	public String getAdditionalInformation() {
		return additionalInformation;
	}
	public void setAdditionalInformation(String additionalInformation) {
		this.additionalInformation = additionalInformation;
	}
	public String getAutoapprove() {
		return autoapprove;
	}
	public void setAutoapprove(String autoapprove) {
		this.autoapprove = autoapprove;
	}
	
	
	

}
