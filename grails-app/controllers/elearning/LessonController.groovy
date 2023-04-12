package elearning

class LessonController {

    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST"]

     LessonService lessonService

    def get(Long id){
        respond lessonService.get(id)
    }
    def list(Lesson lesson){
        respond lessonService.list(lesson)
    }

    def delete(Long id){
        respond lessonService.delete(id)
    }

    def save(Lesson lesson){

        respond lessonService.save(lesson)
    }

    def index() { }
}
