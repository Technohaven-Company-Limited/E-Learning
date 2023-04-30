package elearning

import elearning.Course
import grails.gorm.services.Service
import groovy.sql.Sql

@Service(Course)
interface CourseService {

    Course get(Serializable id)

    List<Course> list(Map args)

    Long count()

    void delete(Serializable id)

    Course save(Course course)
}