package elearning

import grails.util.Holders

import javax.servlet.http.HttpServletRequest
import org.springframework.web.multipart.MultipartFile

class CourseController {

    static  allowedMethods = [get: "GET", list: "GET", save: "POST", update: "PUT"]

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

    def show(Long id) {
        def course = Course.get(id)
        render(view:'courseDetails', model:[show: course])
    }

    def delete(Long id){
        courseService.delete(id)
        redirect(action: "index")
    }

    def save(Course course){
        if (course.hasErrors()) {
            render(view: "uploadCourse", model: [courses: course])
        } else {
            try {
                def uploadedFile = request.getPart('courseLogoFile')

                if (uploadedFile && uploadedFile.getSize() > 0) {
                    // Specify the directory where you want to save the uploaded file
//                    String rootPath = Holders.getServletContext()
//                    String uploadDir = rootPath?.getAt("getRealPath")
//                    print(uploadDir)
                    String uploadDir = "D:\\Mohaiminul\\Github\\E-Learning\\grails-app\\assets\\images\\"
//                    String uploadDir = "https://drive.google.com/drive/folders/1--pwQ6SE2N-SLHoCGJTGwN7G4mMwqmrm?usp=share_link"
                    // Create the upload directory if it doesn't exist
                    new File(uploadDir).mkdirs()
                    // Get the original filename
                    String originalFilename = uploadedFile.getSubmittedFileName()
                    // Save the uploaded file to the upload directory
                    uploadedFile.write(uploadDir + originalFilename)
                    course.setCourseLogo(originalFilename);

                    flash.message = "File uploaded successfully!"
                } else {
                    flash.error = "No file selected."
                }

                courseService.save(course)
                redirect(action: "index")
            }catch(Exception e){
                e.printStackTrace()
            }

        }
    }

    def edit(Course course) {
        [course: course]
    }

    def update(Course course) {
        if (course.hasErrors()) {
            render(view: "edit", model: [course: course])
        } else {
            try {
                def uploadedFile = request.getPart('courseLogoFile')

                if (uploadedFile && uploadedFile.getSize() > 0) {
                    // Specify the directory where you want to save the uploaded file
                    String uploadDir = "D:\\Mohaiminul\\Github\\E-Learning\\grails-app\\assets\\images\\"
                    // Create the upload directory if it doesn't exist
                    new File(uploadDir).mkdirs()
                    // Get the original filename
                    String originalFilename = uploadedFile.getSubmittedFileName()
                    // Save the uploaded file to the upload directory
                    uploadedFile.write(uploadDir + originalFilename)
                    course.setCourseLogo(originalFilename);

                    flash.message = "File uploaded successfully!"
                } else {
                    flash.error = "No file selected."
                }

                courseService.save(course)
                redirect(action: "index")
            }catch(Exception e){
                e.printStackTrace()
            }
        }
    }

    List<Course> queryCourseWithName() {
        def auth = AppUtil.getAppSession()["AUTHORIZED"]
        def users = auth.user
        def trainer = users.fullName
        def course = Course.findAllByCourseTrainer(trainer)
        render(view:'courseList', model:[coursesss: course])
    }

    def lessonList(String code){
        def lesson = Lesson.findAllByLessonCourse(code)
        render(view:'lessonList', model:[lessons: lesson])
    }

    def lessonListWithFile(String code){
        def lesson = Lesson.findAllByLessonCourse(code)
        render(view:'lessonListWithFile', model:[lessonss: lesson])
    }

}
