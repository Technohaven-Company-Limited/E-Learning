package elearning

import elearning.Lesson
import grails.gorm.services.Service

@Service(Lesson)
interface LessonService {

    Lesson get(Serializable id)

    List<Lesson> list(Map args)

    Long count()

    void delete(Serializable id)

    Lesson save(Lesson lesson)
}