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

    static  allowedMethods = [get: "GET", list: "GET", save: "POST", update: "PUT"]

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
            try {
                def uploadedFile = request.getPart('lessonFileUpload')

                if (uploadedFile && uploadedFile.getSize() > 0) {
                    // Specify the directory where you want to save the uploaded file
                    String uploadDir = "D:\\Mohaiminul\\Github\\E-Learning\\grails-app\\assets\\videos\\"
                    // Create the upload directory if it doesn't exist
                    new File(uploadDir).mkdirs()
                    // Get the original filename
                    String originalFilename = uploadedFile.getSubmittedFileName()
                    // Save the uploaded file to the upload directory
                    uploadedFile.write(uploadDir + originalFilename)
                    lesson.setLessonFile(originalFilename);

                    flash.message = "File uploaded successfully!"
                } else {
                    flash.error = "No file selected."
                }

                lessonService.save(lesson)
                redirect(action: "index")
            }catch(Exception e){
                e.printStackTrace()
            }
        }
    }

    def edit(Lesson lesson) {
        [lesson: lesson]
    }

    def update(Lesson lesson) {
        if (lesson.hasErrors()) {
            render(view: "edit", model: [lesson: lesson])
        } else {
            try {
                def uploadedFile = request.getPart('lessonFileUpload')

                if (uploadedFile && uploadedFile.getSize() > 0) {
                    // Specify the directory where you want to save the uploaded file
                    String uploadDir = "D:\\Mohaiminul\\Github\\E-Learning\\grails-app\\assets\\videos\\"
                    // Create the upload directory if it doesn't exist
                    new File(uploadDir).mkdirs()
                    // Get the original filename
                    String originalFilename = uploadedFile.getSubmittedFileName()
                    // Save the uploaded file to the upload directory
                    uploadedFile.write(uploadDir + originalFilename)
                    lesson.setLessonFile(originalFilename);

                    flash.message = "File uploaded successfully!"
                } else {
                    flash.error = "No file selected."
                }

                lessonService.save(lesson)
                redirect(action: "index")
            }catch(Exception e){
                e.printStackTrace()
            }
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
