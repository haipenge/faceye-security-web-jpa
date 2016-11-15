<%@ include file="/component/core/taglib/taglib.jsp"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/web/clientDetails/clientDetails.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/web/clientDetails/clientDetails.js"/>"></script>

<div class="page-head">
	<h2>
		<fmt:message key="security.web.clientDetails.manager"></fmt:message>
		<a class="btn btn-primary" href="<c:url value="/security/web/clientDetails/input"/>"> <fmt:message key="security.web.clientDetails.add"></fmt:message>
		</a>
	</h2>
</div>

<div class="cl-mcont">
	<!-- 
	<div class="header">
		<h2>
			<fmt:message key="security.web.clientDetails.manager"></fmt:message>
		</h2>

		<a class="btn btn-default" href="<c:url value="/security/clientDetails/input"/>"> <fmt:message key="security.web.clientDetails.add"></fmt:message>
		</a>
	</div>
	 -->
	<div class="block-flat">
		<div class="content">
			<div classs="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>ClientId</th>
							<th>Secret</th>
							<th>authorizedGrantTypes</th>
							<!--@generate-entity-jsp-property-desc@-->
							<th><fmt:message key="global.edit"></fmt:message></th>
							<th><fmt:message key="global.remove"></fmt:message></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${page.content}" var="clientDetails">
							<tr>
								<td>${clientDetails.id}</td>
								<td>${clientDetails.clientSecret}</td>
								<td>${clientDetails.authorizedGrantTypes}
								<!--@generate-entity-jsp-property-value@-->
								<td><a href="<c:url value="/security/web/clientDetails/edit/${clientDetails.id}"/>"> <fmt:message key="global.edit"></fmt:message>
								</a></td>
								<td><a href="<c:url value="/security/web/clientDetails/remove/${clientDetails.id}"/>"> <fmt:message key="global.remove"></fmt:message>
								</a></td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<f:page page="${page}" url="/security/web/clientDetails/home" params="<%=request.getParameterMap()%>" />
		</div>
	</div>
</div>
