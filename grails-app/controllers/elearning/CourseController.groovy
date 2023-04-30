package elearning

class CourseController {


    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST", update: "PUT"]

    CourseService courseService

    def index() {
        def course = Course.list()
        [courses: course]
//        render(view:'../trainerHome', model:[courses: course])
    }

    def create() {
        [course: new Course()]
    }

    def get(Long id){
        courseService.get(id)
    }

    def list(Course course){
        courseService.list(course)
    }

    def show() {
        [course: Course.get(params.id)]
    }

    def delete(Long id){
        courseService.delete(id)
        redirect action: "index"
    }

    def save(Course course){
        if (course.hasErrors()) {
            render(view: "uploadCourse", model: [courses: course])
        } else {
            courseService.save(course)
            redirect(action: "index")
        }
    }

    def edit(Course course) {
        [course: course]
    }

    def update(Course course) {
        if (course.hasErrors()) {
            render(view: "edit", model: [course: course])
        } else {
            courseService.save(course)
            redirect(action: "index")
        }
    }

    def trainerhome(){
        def course = Course.list()
        render(view:'../trainerHome', model:[coursess: course])
    }

}
