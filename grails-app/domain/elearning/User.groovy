package elearning

class User {
    String roleName
    String fullName
    String email
    String userName
    String passWord
    static hasMany = [course: Course]
    static belongsTo = [_course: Course]

    static constraints = {
        roleName nullable: false
        fullName nullable: false
        email email: true, nullable: false, unique: true
        userName nullable: false, unique: true
        passWord password: true, nullable: false
        _course nullable: true
    }
}
