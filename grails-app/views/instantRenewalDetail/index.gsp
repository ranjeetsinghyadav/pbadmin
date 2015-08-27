
<%@ page import="org.pb.InstantRenewalDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instantRenewalDetail.label', default: 'InstantRenewalDetail')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-instantRenewalDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-instantRenewalDetail" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="customerName" title="${message(code: 'instantRenewalDetail.customerName.label', default: 'Customer Name')}" />
					
						<g:sortableColumn property="mobile" title="${message(code: 'instantRenewalDetail.mobile.label', default: 'Mobile')}" />
					
						<g:sortableColumn property="emailId" title="${message(code: 'instantRenewalDetail.emailId.label', default: 'Email Id')}" />
					
						<g:sortableColumn property="docUrl" title="${message(code: 'instantRenewalDetail.docUrl.label', default: 'Doc Url')}" />
					
						<g:sortableColumn property="customerId" title="${message(code: 'instantRenewalDetail.customerId.label', default: 'Customer Id')}" />
					
						<g:sortableColumn property="leadId" title="${message(code: 'instantRenewalDetail.leadId.label', default: 'Lead Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${instantRenewalDetailInstanceList}" status="i" var="instantRenewalDetailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${instantRenewalDetailInstance.id}">${fieldValue(bean: instantRenewalDetailInstance, field: "customerName")}</g:link></td>
					
						<td>${fieldValue(bean: instantRenewalDetailInstance, field: "mobile")}</td>
					
						<td>${fieldValue(bean: instantRenewalDetailInstance, field: "emailId")}</td>
					
						<td>${fieldValue(bean: instantRenewalDetailInstance, field: "docUrl")}</td>
					
						<td>${fieldValue(bean: instantRenewalDetailInstance, field: "customerId")}</td>
					
						<td>${fieldValue(bean: instantRenewalDetailInstance, field: "leadId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${instantRenewalDetailInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
