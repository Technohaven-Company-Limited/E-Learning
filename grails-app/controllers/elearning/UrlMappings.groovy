package elearning

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/user/loginPage")
        "/login"(view:"/user/loginPage")
        "/register"(view:"/user/register")
        "/lesson"(view:"/lesson/uploadLesson")
        "/contactus"(view:"/contactUs/contactPage")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
