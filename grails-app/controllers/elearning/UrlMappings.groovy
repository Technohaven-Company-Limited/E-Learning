package elearning

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "/login"(view:"/user/loginPage")
        "/register"(view:"/user/register")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
