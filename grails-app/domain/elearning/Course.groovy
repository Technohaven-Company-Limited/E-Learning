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
    String courseLogo

    static constraints = {
        courseCode nullable: false, unique: true
        courseCategory nullable: true
        courseName nullable: false, unique: true, size: 5..150
        courseTrainer nullable: true
        courseDescription nullable: true
        courseUploadDate nullable: true
        courseDuration nullable: true
        coursePrice nullable: true
        courseDiscount nullable: true
        courseLogo nullable: true
    }

    String toString(){
        "${courseCode}"
    }
}
