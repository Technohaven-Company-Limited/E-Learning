package elearning

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "dashboard", action: "index")
//        "/login"(controller: "authentication", action: "login")
//        "/register"(controller: "authentication", action: "registration")
//        "/lesson"(view:"/lesson/uploadLesson")
//        "/course"(view:"/course/uploadCourse")
//        "/contactus"(view:"/contactUs/contactPage")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
