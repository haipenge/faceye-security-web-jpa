<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/web/user/user.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/web/user/user.js"/>"></script>
<div class="block-flat">
	<div class="header">
		<h3>
			<c:choose>
				<c:when test="${empty user.id}">
					<fmt:message key="security.web.user.add"></fmt:message>
				</c:when>
				<c:otherwise>
					<fmt:message key="security.web.user.edit"></fmt:message>
				</c:otherwise>
			</c:choose>
		</h3>
	</div>
	<div class="content">
		<form:form action="/security/web/user/save" method="post" role="form" cssClass="form-horizontal" commandName="user">
			<form:hidden path="id" />
			<fieldset>
				<div class="form-group">
					<label class="col-md-2 control-label" for="name"> <fmt:message key="security.web.user.name"></fmt:message>
					</label>
					<div class="col-md-6">
						<form:input path="username" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="password"> <fmt:message key="security.web.user.password"></fmt:message>
					</label>
					<div class="col-md-6">
						<form:password path="password" showPassword="true" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="email"> <fmt:message key="security.web.user.email"></fmt:message>
					</label>
					<div class="col-md-6">
						<form:input path="email" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="role.id"> <fmt:message key="security.web.role"></fmt:message>
					</label>
					<div class="col-md-6">
						<form:checkboxes path="roleIds" items="${roles}" itemValue="id" itemLabel="name"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="enabled"> <fmt:message key="security.web.user.enabled"></fmt:message>
					</label>
					<div class="col-md-6">
						<form:radiobutton path="enabled" value="true" />
						&nbsp;&nbsp;
						<f:boolean value="true" />
						&nbsp;&nbsp;
						<form:radiobutton path="enabled" value="false" />
						&nbsp;&nbsp;
						<f:boolean value="false" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="accountExpired"> <fmt:message key="security.web.user.accountExpired"></fmt:message>
					</label>
					<div class="col-md-6">
						<form:radiobutton path="accountExpired" value="true" />
						&nbsp;&nbsp;
						<f:boolean value="true" />
						&nbsp;&nbsp;
						<form:radiobutton path="accountExpired" value="false" />
						&nbsp;&nbsp;
						<f:boolean value="false" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="accountExpired"> <fmt:message key="security.web.user.accountLocked"></fmt:message>
					</label>
					<div class="col-md-6">
						<form:radiobutton path="accountLocked" value="true" />
						&nbsp;&nbsp;
						<f:boolean value="true" />
						&nbsp;&nbsp;
						<form:radiobutton path="accountLocked" value="false" />
						&nbsp;&nbsp;
						<f:boolean value="false" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-2 control-label" for="credentialsExpired"> <fmt:message key="security.web.user.credentialsExpired"></fmt:message>
					</label>
					<div class="col-md-6">
						<form:radiobutton path="credentialsExpired" value="true" />
						&nbsp;&nbsp;
						<f:boolean value="true" />
						&nbsp;&nbsp;
						<form:radiobutton path="credentialsExpired" value="false" />
						&nbsp;&nbsp;
						<f:boolean value="false" />
					</div>
				</div>

				<!--@generate-entity-jsp-property-update@-->

				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
						<button type="submit" class="btn btn-primary">
							<fmt:message key="global.submit.save"></fmt:message>
						</button>
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>