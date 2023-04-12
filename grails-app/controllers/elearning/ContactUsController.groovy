package elearning

class ContactUsController {

    ContactUsService contactUsService

    static  allowedMethods = [get: "GET", delete: "DELETE" , save: "POST"]



    def index() { }


    def get(Long id){
        respond contactUsService.get(id)
    }

    def delete(Long id){
        respond contactUsService.delete(id)
    }

    def save(ContactUs contactUs){
        respond contactUsService.save(contactUs)
    }



}
