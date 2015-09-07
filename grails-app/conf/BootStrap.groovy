import org.pb.sec.SecRole
import org.pb.sec.SecUser
import org.pb.sec.SecUserSecRole

class BootStrap {

	def springSecurityService

	def init = { servletContext ->

		def adminUser = SecUser.findByUsername('pbadmin') ?: new SecUser(
				username: 'pbadmin',
				password: 'secret',
				enabled: true).save(failOnError: true)

		def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

		if (!adminUser.authorities.contains(adminRole)) {
			SecUserSecRole.create adminUser, adminRole
		}

	}
	def destroy = {
	}
}
