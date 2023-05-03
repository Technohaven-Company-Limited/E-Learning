package elearning

import net.sf.jasperreports.engine.JasperCompileManager
import net.sf.jasperreports.engine.JasperExportManager
import net.sf.jasperreports.engine.JasperFillManager
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource


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

    def report(){
        // Load the report file
        def reportFile = new File("../../src/main/webapp/myfirstreport.jrxml")

        // Compile the report file
        def jasperReport = JasperCompileManager.compileReport(reportFile.path)

        // Fill the report with data
        def params = [:]
        def dataSource = Course.list() // Get the list of products from the database
        def jasperPrint = JasperFillManager.fillReport(jasperReport, params, new JRBeanCollectionDataSource(dataSource))

        // Render the report and display it in the browser
        JasperExportManager.exportReportToPdfStream(jasperPrint, response.outputStream)
    }

}
