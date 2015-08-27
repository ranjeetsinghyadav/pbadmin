
<%@ page import="org.pb.InstantRenewalDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instantRenewalDetail.label', default: 'InstantRenewalDetail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-instantRenewalDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-instantRenewalDetail" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list instantRenewalDetail">
			
				<g:if test="${instantRenewalDetailInstance?.customerName}">
				<li class="fieldcontain">
					<span id="customerName-label" class="property-label"><g:message code="instantRenewalDetail.customerName.label" default="Customer Name" /></span>
					
						<span class="property-value" aria-labelledby="customerName-label"><g:fieldValue bean="${instantRenewalDetailInstance}" field="customerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instantRenewalDetailInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="instantRenewalDetail.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${instantRenewalDetailInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instantRenewalDetailInstance?.emailId}">
				<li class="fieldcontain">
					<span id="emailId-label" class="property-label"><g:message code="instantRenewalDetail.emailId.label" default="Email Id" /></span>
					
						<span class="property-value" aria-labelledby="emailId-label"><g:fieldValue bean="${instantRenewalDetailInstance}" field="emailId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instantRenewalDetailInstance?.docUrl}">
				<li class="fieldcontain">
					<span id="docUrl-label" class="property-label"><g:message code="instantRenewalDetail.docUrl.label" default="Doc Url" /></span>
					
						<span class="property-value" aria-labelledby="docUrl-label"><g:fieldValue bean="${instantRenewalDetailInstance}" field="docUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instantRenewalDetailInstance?.customerId}">
				<li class="fieldcontain">
					<span id="customerId-label" class="property-label"><g:message code="instantRenewalDetail.customerId.label" default="Customer Id" /></span>
					
						<span class="property-value" aria-labelledby="customerId-label"><g:fieldValue bean="${instantRenewalDetailInstance}" field="customerId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instantRenewalDetailInstance?.leadId}">
				<li class="fieldcontain">
					<span id="leadId-label" class="property-label"><g:message code="instantRenewalDetail.leadId.label" default="Lead Id" /></span>
					
						<span class="property-value" aria-labelledby="leadId-label"><g:fieldValue bean="${instantRenewalDetailInstance}" field="leadId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instantRenewalDetailInstance?.createdAt}">
				<li class="fieldcontain">
					<span id="createdAt-label" class="property-label"><g:message code="instantRenewalDetail.createdAt.label" default="Created At" /></span>
					
						<span class="property-value" aria-labelledby="createdAt-label"><g:formatDate date="${instantRenewalDetailInstance?.createdAt}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:instantRenewalDetailInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${instantRenewalDetailInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
