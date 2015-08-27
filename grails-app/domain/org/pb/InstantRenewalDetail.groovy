package org.pb

class InstantRenewalDetail {
	
	String customerName
	
	String mobile
	
	String emailId
	
	String docUrl
	
	Integer customerId
	
	Integer leadId
	
	Date createdAt

    static constraints = {
		customerName(blank: false)
		mobile(blank: false)
		emailId(email: true, blank: false)
		docUrl(blank: false, url: true)
		customerId(blank: true, nullable: true)
		leadId(blank: true, nullable: true)
    }
}
