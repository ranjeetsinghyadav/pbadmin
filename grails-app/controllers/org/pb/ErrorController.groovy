package org.pb

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class ErrorController {

	def index() { }

	def error500() {
		respond 'error500'
	}
	
	def error404() {
		respond 'error404'
	}
}
