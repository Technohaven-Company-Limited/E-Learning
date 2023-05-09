package elearning

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
            redirect(controller: "dashboard", action: "index")
        } else {
            flash.message = AppUtil.infoMessage("Username or Password not Valid.", false)
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
