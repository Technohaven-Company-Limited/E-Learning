package elearning

import grails.gorm.transactions.Transactional
import grails.web.servlet.mvc.GrailsParameterMap

@Transactional
class AuthenticationService {

    private static final String AUTHORIZED = "AUTHORIZED"

    def setUserAuthorization(User user) {
        def authorization = [isLoggedIn: true, user: user]
        AppUtil.getAppSession()[AUTHORIZED] = authorization
    }

    def doLogin(String userName, String passWord){
//        passWord = passWord.encodeAsMD5()
        User user = User.findByUserNameAndPassWord(userName, passWord)
        if (user){

            setUserAuthorization(user)
            return true
        }
        return false
    }

    boolean isAuthenticated(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        if (authorization && authorization.isLoggedIn){
            return true
        }
        return false
    }


    def getUser(){
        def authorization = AppUtil.getAppSession()[AUTHORIZED]
        return authorization?.user
    }


    def getUserFullname(){
        def user = getUser()
        return "${user.fullName}"
    }

    def isAdministratorUser(){
        def user = getUser()
        if (user && user.roleName == GlobalConfig.ROLE_NAME.ADMINISTRATOR){
            return true
        }
        return false
    }

    def isTrainerUser(){
        def user = getUser()
        if (user && user.roleName == GlobalConfig.ROLE_NAME.TRAINER){
            return true
        }
        return false
    }

    def isLearnerUser(){
        def user = getUser()
        if (user && user.roleName == GlobalConfig.ROLE_NAME.USER){
            return true
        }
        return false
    }

    def save(GrailsParameterMap params) {
        User user = new User(params)
        def response = AppUtil.saveResponse(true, user)
        if (user.validate()) {
            user.save(flush: true)
            if (!user.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }
}
