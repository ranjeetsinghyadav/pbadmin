package org.pb



import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured
import grails.transaction.Transactional

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
@Transactional(readOnly = true)
class InstantRenewalDetailController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond InstantRenewalDetail.list(params), model:[instantRenewalDetailInstanceCount: InstantRenewalDetail.count()]
	}

	def show(InstantRenewalDetail instantRenewalDetailInstance) {
		respond instantRenewalDetailInstance
	}

	def create() {
		respond new InstantRenewalDetail(params)
	}

	@Transactional
	def save(InstantRenewalDetail instantRenewalDetailInstance) {
		if (instantRenewalDetailInstance == null) {
			notFound()
			return
		}

		if (instantRenewalDetailInstance.hasErrors()) {
			respond instantRenewalDetailInstance.errors, view:'create'
			return
		}

		instantRenewalDetailInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'instantRenewalDetail.label', default: 'InstantRenewalDetail'),
					instantRenewalDetailInstance.id
				])
				redirect instantRenewalDetailInstance
			}
			'*' { respond instantRenewalDetailInstance, [status: CREATED] }
		}
	}

	def edit(InstantRenewalDetail instantRenewalDetailInstance) {
		respond instantRenewalDetailInstance
	}

	@Transactional
	def update(InstantRenewalDetail instantRenewalDetailInstance) {
		if (instantRenewalDetailInstance == null) {
			notFound()
			return
		}

		if (instantRenewalDetailInstance.hasErrors()) {
			respond instantRenewalDetailInstance.errors, view:'edit'
			return
		}

		instantRenewalDetailInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'InstantRenewalDetail.label', default: 'InstantRenewalDetail'),
					instantRenewalDetailInstance.id
				])
				redirect instantRenewalDetailInstance
			}
			'*'{ respond instantRenewalDetailInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(InstantRenewalDetail instantRenewalDetailInstance) {

		if (instantRenewalDetailInstance == null) {
			notFound()
			return
		}

		instantRenewalDetailInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'InstantRenewalDetail.label', default: 'InstantRenewalDetail'),
					instantRenewalDetailInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'instantRenewalDetail.label', default: 'InstantRenewalDetail'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
