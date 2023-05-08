package elearning

import net.sf.jasperreports.engine.JRDataSource
import net.sf.jasperreports.engine.JREmptyDataSource
import net.sf.jasperreports.engine.JasperCompileManager
import net.sf.jasperreports.engine.JasperExportManager
import net.sf.jasperreports.engine.JasperFillManager
import net.sf.jasperreports.engine.JasperPrint
import net.sf.jasperreports.engine.JasperReport
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource
import net.sf.jasperreports.engine.util.JRLoader


class CourseController {


    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST", update: "PUT"]

    CourseService courseService

    def index() {
        def course = Course.list()
        [courses: course]
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

    List<Course> queryCourseWithName(String trainer) {
        def course = Course.findAllByCourseTrainer(trainer)
        render(view:'../customList', model:[coursesss: course])
    }

}
