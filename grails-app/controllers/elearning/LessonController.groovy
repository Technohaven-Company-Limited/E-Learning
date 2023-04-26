package elearning

class LessonController {

    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST", update: "PUT"]

     LessonService lessonService

    def index() {
        def lesson = Lesson.list()
        [lessons: lesson]
    }

    def create() {
        [lesson: new Lesson()]
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
//            render(view: "loginPage")
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

}
