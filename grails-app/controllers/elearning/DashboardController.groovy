package elearning

class DashboardController {

    def index(){
        def course = Course.list()
        render(view:'index', model:[courses: course])
    }

    def userHome(){
        def course = Course.list()
        render(view:'../dashboard/userHome', model:[coursess: course])
    }
}
