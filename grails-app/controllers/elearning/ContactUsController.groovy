package elearning

class ContactUsController {

    ContactUsService contactUsService

    static  allowedMethods = [get: "GET", save: "POST"]



    def index() {
        def contactUs = ContactUs.list()
        [contactus: contactUs]
    }

    def create() {
        render(view: "contactPage")
    }


//    def get(Long id){
//        respond contactUsService.get(id)
//    }
//
//    def delete(Long id){
//        respond contactUsService.delete(id)
//    }

    def save(ContactUs contactUs){
        if (contactUs.hasErrors()) {
            render(view: "contactPage", model: [contactus: contactUs])
        } else {
            contactUsService.save(contactUs)
//            render(view: "loginPage")
//            redirect(action: "index")

        }
    }



}
