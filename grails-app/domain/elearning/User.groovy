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
        roleName blank: false, nullable: false
        fullName blank: false, nullable: false
        email email: true, nullable: false, blank: false, unique: true
        userName blank: false, nullable: false, unique: true
        passWord password: true, nullable: false, blank: false
        course nullable: true
    }
}
