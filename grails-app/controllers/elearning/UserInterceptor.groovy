package elearning

class UserInterceptor {

    AuthenticationService authenticationService

    boolean before() {
        if (authenticationService.isAdministratorUser()){
            return true
        }
        if (authenticationService.isTrainerUser()){
            return true
        }
        if (authenticationService.isLearnerUser()){
            return true
        }
        flash.message = AppUtil.infoMessage("You are not Authorized for this Action.", false)
        redirect(controller: "dashboard", action: "index")
        return false
    }
}
