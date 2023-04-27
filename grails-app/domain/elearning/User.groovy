package elearning

class User {
    String roleName
    String fullName
    String email
    String userName
    String passWord

    static constraints = {
        roleName nullable: false
        fullName nullable: false
        email email: true, nullable: false, unique: true
        userName nullable: false, unique: true
        passWord password: true, nullable: false
    }
}
