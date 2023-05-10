package elearning

import grails.gorm.transactions.Transactional
import net.sf.jasperreports.engine.JREmptyDataSource
import net.sf.jasperreports.engine.JasperCompileManager
import net.sf.jasperreports.engine.JasperExportManager
import net.sf.jasperreports.engine.JasperFillManager

import java.sql.PreparedStatement
import java.sql.ResultSet

@Transactional
class LessonController {

    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST", update: "PUT"]

    def dataSource
    LessonService lessonService

    def index() {
        def lesson = Lesson.list()
        [lessons: lesson]
    }

    def create() {
        render(view: "uploadLesson")
    }

    def get(Long id){
         lessonService.get(id)
    }
    def list(Lesson lesson){
         lessonService.list(lesson)
    }

    def delete(Long id){
        lessonService.delete(id)
        redirect action: "index"
    }

    def save(Lesson lesson){
        if (lesson.hasErrors()) {
            render(view: "uploadLesson", model: [users: lesson])
        } else {
            lessonService.save(lesson)
            redirect(action: "index")
        }
    }

    def edit(Lesson lesson) {
        [lesson: lesson]
    }

    def update(Lesson lesson) {
        if (lesson.hasErrors()) {
            render(view: "edit", model: [lesson: lesson])
        } else {
            lessonService.save(lesson)
            redirect(action: "index")
        }
    }

    def generateReport() {
        def jasperReport = JasperCompileManager.compileReport("grails-app/reports/MysqlReport.jrxml")
//        def dataSource = new JREmptyDataSource()
//        String sql = "SELECT * FROM lesson WHERE id = 2"
        def con = dataSource.getConnection()
//        PreparedStatement pst = con.prepareStatement(sql)
//        ResultSet rs = pst.executeQuery()

        def params = [:]
        def jasperPrint = JasperFillManager.fillReport(jasperReport, params, con)
        response.contentType = 'application/pdf'
        JasperExportManager.exportReportToPdfStream(jasperPrint, response.outputStream)
    }

}
