package elearning

class AppInitializationService {

    static initialize() {
        admin()
    }

    private static admin() {
        if (User.count() == 0) {
            User user = new User()
            user.fullName = "System Admin"
            user.email = "admin@gmail.com"
            user.userName = "administrator"
            user.passWord = "123"
            user.save(flash: true)
        }
    }
}
