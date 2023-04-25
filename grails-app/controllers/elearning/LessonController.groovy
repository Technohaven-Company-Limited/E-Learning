package elearning

class LessonController {

    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST"]

     LessonService lessonService

    def index() {
        def lesson = Lesson.list()
        [lessons: lesson]
    }

    def get(Long id){
         lessonService.get(id)
    }
    def list(Lesson lesson){
         lessonService.list(lesson)
    }

    def delete(Long id){
        lessonService.delete(id)
    }

    def save(Lesson lesson){
        if (lesson.hasErrors()) {
            render(view: "uploadLesson", model: [users: lesson])
        } else {
            lessonService.save(lesson)
//            render(view: "loginPage")
            redirect(action: "index")
        }
    }

}
