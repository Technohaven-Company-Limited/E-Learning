package elearning

import javax.servlet.http.HttpServletRequest

class CourseController {

    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST", update: "PUT"]

    CourseService courseService

    def index() {
        def course = Course.list()
        [courses: course]
    }

    def create() {
        render(view: "uploadCourse")
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

    def userhome(){
        def course = Course.list()
        render(view:'../userHome', model:[coursess: course])
    }

    List<Course> queryCourseWithName(String trainer) {
        def course = Course.findAllByCourseTrainer(trainer)
        render(view:'../customList', model:[coursesss: course])
    }

    def uploadImage(Course course, HttpServletRequest request){
        if (request.getFile("courseLogo") && !request.getFile("courseLogo").filename.equals("")){
            String image = FileUtil.uploadCourseImage(course.id, request.getFile("courseLogo"))
            if (!image.equals("")){
                course.courseLogo = image
                course.save(flush:true)
            }
        }
    }

}
