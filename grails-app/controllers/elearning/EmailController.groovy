package elearning

class EmailController {

    EmailService emailService

    static  allowedMethods = [get: "GET", delete: "DELETE" , save: "POST"]



    def index() { }


    def get(Long id){
        respond emailService.get(id)
    }

    def delete(Long id){
        respond emailService.delete(id)
    }

    def save(Email email){
        respond emailService.save(email)
    }



}
