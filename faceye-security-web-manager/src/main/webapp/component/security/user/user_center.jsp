<%@ include file="/component/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/web/user/user.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/web/user/user.js"/>"></script>
<div class="page-head">
	<h2>
		<fmt:message key="security.web.user.manager"></fmt:message>
		<a class="btn btn-primary" href="<c:url value="/security/web/user/input"/>"> <fmt:message key="security.web.user.add"></fmt:message>
		</a>
	</h2>
</div>
<div class="cl-mcont">
	<div class="block-flat">
		<div class="content">
			<form action="<c:url value="/security/web/user/home"/>" method="post" role="form" class="form-horizontal">

				<div class="form-group">
					<div class="col-md-2">
						<input type="text" name="LIKE|username" placeholder="User name" class="form-control">
					</div>
					<div class="col-md-2">
						<input type="text" name="LIKE|email" placeholder="Email" class="form-control">
					</div>
					<div class="col-md-2">
						<button type="submit" class="btn btn-primary">
							<fmt:message key="global.search" />
						</button>
					</div>
				</div>
			</form>
		</div>
		<div class="content">
			<div classs="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th><fmt:message key='security.web.user.name'></fmt:message></th>
							<th><fmt:message key='security.web.user.email'></fmt:message></th>
							<th><fmt:message key='security.web.user.enabled'></fmt:message></th>
							<th><fmt:message key='security.web.user.accountExpired'></fmt:message></th>
							<th><fmt:message key='security.web.user.accountLocked'></fmt:message></th>
							<th><fmt:message key='security.web.user.credentialsExpired'></fmt:message></th>
							<th><fmt:message key='security.web.user.roles'></fmt:message></th>
							<!--@generate-entity-jsp-property-desc@-->
							<th><fmt:message key="security.web.user.auth"></fmt:message></th>
							<th><fmt:message key="global.edit"></fmt:message></th>
							<th><fmt:message key="global.remove"></fmt:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${page.content}" var="user">
							<tr>
								<td>${user.username}</td>
								<td>${user.email}</td>
								<td><f:boolean value="${user.enabled}" /></td>
								<td><f:boolean value="${user.accountExpired}" /></td>
								<td><f:boolean value="${user.accountLocked}" /></td>
								<td><f:boolean value="${user.credentialsExpired}" /></td>
								<td><c:forEach items="${user.roles}" var="role" varStatus="status">${role.name}<c:if test="${not status.last}">,</c:if>
									</c:forEach></td>
								<!--@generate-entity-jsp-property-value@-->
								<td><a href="<c:url value="/security/web/user/prepareAuthRoles/${user.id}"/>"> <fmt:message key="security.web.user.auth"></fmt:message>
								</a></td>
								<td><a href="<c:url value="/security/web/user/edit/${user.id}"/>"> <fmt:message key="global.edit"></fmt:message>
								</a></td>
								<td><a href="<c:url value="/security/web/user/remove/${user.id}"/>"> <fmt:message key="global.remove"></fmt:message>
								</a></td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<f:page page="${page}" url="/security/web/user/home" params="<%=request.getParameterMap()%>" />
		</div>
	</div>
</div>
