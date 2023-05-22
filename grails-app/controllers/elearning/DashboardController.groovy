package elearning

class DashboardController {

    def index(){
        def course = Course.list()
        render(view:'index', model:[courses: course])
    }

    def userHome(){
        def course = Course.list()
        render(view:'userHome', model:[coursess: course])
    }

    List<Course> queryCourseWithName() {
        def auth = AppUtil.getAppSession()["AUTHORIZED"]
        def users = auth.user
        def trainer = users.fullName
        def course = Course.findAllByCourseTrainer(trainer)
        render(view:'trainerHome', model:[courses: course])
    }
}
