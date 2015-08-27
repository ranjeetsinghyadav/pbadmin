<%@ page import="org.pb.InstantRenewalDetail" %>



<div class="fieldcontain ${hasErrors(bean: instantRenewalDetailInstance, field: 'customerName', 'error')} required">
	<label for="customerName">
		<g:message code="instantRenewalDetail.customerName.label" default="Customer Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="customerName" required="" value="${instantRenewalDetailInstance?.customerName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instantRenewalDetailInstance, field: 'mobile', 'error')} required">
	<label for="mobile">
		<g:message code="instantRenewalDetail.mobile.label" default="Mobile" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobile" required="" value="${instantRenewalDetailInstance?.mobile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instantRenewalDetailInstance, field: 'emailId', 'error')} required">
	<label for="emailId">
		<g:message code="instantRenewalDetail.emailId.label" default="Email Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailId" required="" value="${instantRenewalDetailInstance?.emailId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instantRenewalDetailInstance, field: 'docUrl', 'error')} required">
	<label for="docUrl">
		<g:message code="instantRenewalDetail.docUrl.label" default="Doc Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="docUrl" required="" value="${instantRenewalDetailInstance?.docUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instantRenewalDetailInstance, field: 'customerId', 'error')} ">
	<label for="customerId">
		<g:message code="instantRenewalDetail.customerId.label" default="Customer Id" />
		
	</label>
	<g:field name="customerId" type="number" value="${instantRenewalDetailInstance.customerId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instantRenewalDetailInstance, field: 'leadId', 'error')} ">
	<label for="leadId">
		<g:message code="instantRenewalDetail.leadId.label" default="Lead Id" />
		
	</label>
	<g:field name="leadId" type="number" value="${instantRenewalDetailInstance.leadId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: instantRenewalDetailInstance, field: 'createdAt', 'error')} required">
	<label for="createdAt">
		<g:message code="instantRenewalDetail.createdAt.label" default="Created At" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdAt" precision="day"  value="${instantRenewalDetailInstance?.createdAt}"  />

</div>

