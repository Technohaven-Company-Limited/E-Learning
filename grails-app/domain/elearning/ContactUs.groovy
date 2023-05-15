package elearning

class ContactUs {
    String fullname
    String email
    String subject
    String message
    String replyMessage

    static constraints = {
        fullname nullable: true, size: 5..25
        email nullable: true, email: true
        subject nullable: true
        message nullable: true
        replyMessage nullable: true
    }
}
