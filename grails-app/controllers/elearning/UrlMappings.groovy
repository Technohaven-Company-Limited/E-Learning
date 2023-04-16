package elearning

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/login"(view:"/loginPage")
        "/register"(view:"/register")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
