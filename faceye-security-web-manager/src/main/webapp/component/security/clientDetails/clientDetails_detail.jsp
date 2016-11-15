<%@ include file="/components/core/taglib/taglib.jsp"%>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/component/security/clientDetails/clientDetails.css"/>" />
<script type="text/javascript" src="<c:url value="/js/component/security/clientDetails/clientDetails.js"/>"></script>
<div class="panel panel-primary">
	<div class="panel-heading">
		<div class="panel-title">
			<fmt:message key="security.clientDetails.detail"></fmt:message>
		</div>
	</div>
	<div class="panel-body">
			<fieldset>
								<div class="form-group">
					<label class="col-md-4 control-label" for="clientDetails">
					  <fmt:message key="security.clientDetails.name"></fmt:message>
					 </label>
					<div class="col-md-4">
						${clientDetails.name}
					</div>
				</div>
								<div class="form-group">
					<label class="col-md-4 control-label" for="clientDetails">
					  <fmt:message key="security.clientDetails.users"></fmt:message>
					 </label>
					<div class="col-md-4">
						${clientDetails.users}
					</div>
				</div>
				<!--@generate-entity-jsp-property-detail@-->
				
				
			</fieldset>
	</div>
</div>