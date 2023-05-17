package elearning

import grails.util.Holders
import grails.web.servlet.mvc.GrailsParameterMap

class AuthenticationController {

    static  allowedMethods = [get: "GET", list: "GET", save: "POST", update: "PUT"]

    AuthenticationService authenticationService

    def login() {
        if (authenticationService.isAuthenticated()) {
            redirect(controller: "dashboard", action: "index")
        }
    }

    def doLogin() {
        if (authenticationService.doLogin(params.userName, params.passWord)) {
            def auth = AppUtil.getAppSession()["AUTHORIZED"]
            def users = auth.user
            if (users.roleName == "USER"){
                redirect(controller: "dashboard", action: "userHome")
                return true
            }
            if (users.roleName == "TRAINER"){
                def trainer = users.fullName
                def course = Course.findAllByCourseTrainer(trainer)
                render(view:'../dashboard/trainerHome', model:[courses: course])
//                redirect(controller: "dashboard", action: "index")
                return true
            }
            if (users.roleName == "ADMINISTRATOR"){
                redirect(controller: "dashboard", action: "index")
                return true
            }
        } else {
//            flash.message = AppUtil.infoMessage("Username or Password not Valid.", false)
            flash.message = "Username or Password not Valid!"
            redirect(controller: "authentication", action: "login")
        }
    }


    def logout() {
        session.invalidate()
        redirect(controller: "authentication", action: "login")
    }

    def registration() {
        [user: flash.redirectParams]
    }


//    def doRegistration(User user) {
//        def response = userService.save(user)
//        if (response.isSuccess) {
//            authenticationService.setUserAuthorization(response.model)
//            redirect(controller: "authentication", action: "login")
//        } else {
//            flash.redirectParams = response.model
//            redirect(controller: "authentication", action: "registration")
//        }
//        if (user.hasErrors()) {
//            render(view: "../authentication/registration", model: [users: user])
//        } else {
//            userService.save(user)
////            render(view: "loginPage")
//            redirect(action: "login")
//        }
//    }
    def doRegistration() {
        def response = authenticationService.save(params)
        if (response.isSuccess) {
            authenticationService.setUserAuthorization(response.model)
            redirect(controller: "authentication", action: "login")
        } else {
            flash.redirectParams = response.model
            redirect(controller: "authentication", action: "registration")
        }
    }
}
