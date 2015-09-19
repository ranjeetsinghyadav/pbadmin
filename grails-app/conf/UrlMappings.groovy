
class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?(.$format)?"{ constraints {
				// apply constraints here
			} }

		//"/"(view:"/index")
		"/"(controller:"home", action:"index")

		"/uicomponents"(controller:"MiscUIComponents", action:"index")

		"500"(controller:"error", action:'error500')
		
		"404"(controller:"error", action:'error404')
	}
}
