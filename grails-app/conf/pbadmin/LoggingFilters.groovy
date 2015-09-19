package pbadmin

class LoggingFilters {

    def filters = {
        all(controller:'*', action:'*') {
            before = {
				println "HTTP Request- '$controllerName/$actionName'"
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
