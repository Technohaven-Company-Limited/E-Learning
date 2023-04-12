package elearning

class CourseController {


    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST"]

    CourseService courseService

    def get(Long id){
        respond courseService.get(id)
    }
    def list(Course course){
        respond courseService.list(course)
    }

    def delete(Long id){
        respond courseService.delete(id)
    }

    def save(Course course){

        respond courseService.save(course)
    }

    def index() { }
}
