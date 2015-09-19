package org.pb

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class AdminController {

	def index() { }

	def wizard() { }

	def formElements() {}
}
