class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        "/" (controller: "home", action: "index")
        "/$action" (controller: "home")

		"/debug"(view:"/debug/index")
		"500"(view:'/debug/error')
	}
}
