package elearning

class Course {
    String courseCode
    String courseCategory
    String courseName
    String courseTrainer
    String courseDescription
    String courseUploadDate
    String courseDuration
    double coursePrice
    double courseDiscount
    static hasMany = [lesson: Lesson, user: User]
    static belongsTo = [_user: User]

    static constraints = {
        courseCode blank: false, nullable: false, unique: true
        courseCategory blank: false, nullable: false
        courseName blank: false, nullable: false, unique: true, size: 5..150
        courseTrainer blank: false, nullable: false
        courseDescription blank: false, nullable: false
        courseUploadDate blank: false, nullable: false
        courseDuration blank: false, nullable: true
        coursePrice blank: false, nullable: false
        courseDiscount blank: false, nullable: true
        user nullable: true
    }
}