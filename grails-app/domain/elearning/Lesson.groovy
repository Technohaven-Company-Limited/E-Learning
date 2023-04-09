package elearning

class Lesson {
    String lessonCode
    String lessonName
    String lessonDescription
    String lessonDuration
    static belongsTo = [course: Course]

    static constraints = {
        lessonCode blank: false, nullable: false, unique: true
        lessonName blank: false, nullable: false, size: 5..150
        lessonDescription blank: false, nullable: false
        lessonDuration blank: false, nullable: false
    }
}
