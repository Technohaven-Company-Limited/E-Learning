package elearning

import elearning.ContactUs
import elearning.User
import grails.gorm.services.Service

@Service(ContactUs)
interface ContactUsService {

    ContactUs get(Serializable id)

//    List<ContactUs> list(Map args)
//
//    Long count()

    void delete(Serializable id)

    ContactUs save(ContactUs contactUs)
}