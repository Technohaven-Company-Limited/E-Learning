package elearning

class AuthenticationService {

    private static final String AUTHORIZED = "AUTHORIZED"

    def setUserAuthorization(User user) {
        def authorization = [isLoggedIn: true, user: user]
        AppUtil.getAppSession()[AUTHORIZED] = authorization
    }

    def doLogin(String username, String password){
        password = password.encodeAsMD5()
        User user = User.findByUsernameAndPassword(username, password)
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
}
