package elearning

class ContactUsController {

    ContactUsService contactUsService

    static  allowedMethods = [get: "GET", save: "POST", update: "PUT"]



    def index() {
        def contactUs = ContactUs.list()
        [contactus: contactUs]
    }

    def create() {
        render(view: "contactPage")
    }


    def get(Long id){
//        contactUsService.get(id)
        def message = ContactUs.findById(id)
        render(view:'reply', model:[reply: message])
    }
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

    def update(ContactUs contactUs) {
        if (contactUs.hasErrors()) {
            render(view: "reply", model: [contactsus: contactUs])
        } else {
            contactUsService.save(contactUs)
            redirect(action: "index")
        }
    }

}
