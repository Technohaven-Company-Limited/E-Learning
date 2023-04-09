package elearning

class ContactUs {
    String fullname
    String email
    String subject
    String message

    static constraints = {
        fullname blank: false, nullable: false, size: 5..25
        email blank: false, nullable: false, email: true
        subject blank: false, nullable: true
        message blank: false, nullable: false
    }
}
