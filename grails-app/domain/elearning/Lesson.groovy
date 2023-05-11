package elearning

class Lesson {
    String lessonCode
    String lessonName
    String lessonDescription
    String lessonDuration
    String lessonCourse
    String lessonFile

    static constraints = {
        lessonCode nullable: false, unique: true
        lessonName nullable: false, size: 5..150
        lessonDescription nullable: false
        lessonDuration nullable: false
        lessonCourse nullable: true
        lessonFile nullable: true
    }
}
