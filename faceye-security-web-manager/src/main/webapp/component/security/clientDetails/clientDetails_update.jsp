<%@ include file="/component/core/taglib/taglib.jsp"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/web/clientDetails/clientDetails.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/web/clientDetails/clientDetails.js"/>"></script>
<div class="block-flat">
	<div class="header">
		<h3>
			<c:choose>
				<c:when test="${empty clientDetails.id}">
					<fmt:message key="security.web.clientDetails.add"></fmt:message>
				</c:when>
				<c:otherwise>
					<fmt:message key="security.web.clientDetails.edit"></fmt:message>
				</c:otherwise>
			</c:choose>
		</h3>
	</div>
	<div class="content">
		<form:form action="/security/web/clientDetails/save" method="post" role="form" cssClass="form-horizontal" commandName="clientDetails">
			<fieldset>
				<div class="form-group">
					<label class="col-md-2 control-label" for="id"> clientId </label>
					<div class="col-md-6">
						<form:input path="id" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="clientSecret"> clientSecret </label>
					<div class="col-md-6">
						<form:input path="clientSecret" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="scope">scope
					</label>
					<div class="col-md-6">
						<form:input path="scope" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label" for="authorizedGrantTypes">authorizedGrantTypes
					</label>
					<div class="col-md-6">
						<form:input path="authorizedGrantTypes" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label" for="webServerRedirectUri">webServerRedirectUri
					</label>
					<div class="col-md-6">
						<form:input path="webServerRedirectUri" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label" for="authorities">authorities
					</label>
					<div class="col-md-6">
						<form:input path="authorities" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label" for="accessTokenValidity">accessTokenValidity
					</label>
					<div class="col-md-6">
						<form:input path="accessTokenValidity" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label" for="refreshTokenValidity">refreshTokenValidity
					</label>
					<div class="col-md-6">
						<form:input path="refreshTokenValidity" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label" for="additionalInformation">additionalInformation
					</label>
					<div class="col-md-6">
						<form:input path="additionalInformation" cssClass="form-control" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-2 control-label" for="autoapprove">autoapprove
					</label>
					<div class="col-md-6">
						<form:input path="autoapprove" cssClass="form-control" />
					</div>
				</div>


				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" class="btn btn-primary">
							<fmt:message key="global.submit.save"/>
						</button>
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>
