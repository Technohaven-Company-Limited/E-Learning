package elearning

class Email {
    String emailAddress
    String emailBody

    static constraints = {
        emailAddress blank: false, nullable: false, email: true
        emailBody blank: false, nullable: false
    }
}
