package elearning

class UserController {

    static  allowedMethods = [get: "GET", list: "GET", save: "POST", update: "PUT"]

     UserService userService

    def index() {
        def user = User.list()
        [users: user]
//        render "testing render text"
    }

    def create() {
        [user: new User()]
    }

    def get(){
//        userService.get(id)
        def auth = AppUtil.getAppSession()["AUTHORIZED"]
        render(view:'profile', model:[profile: auth.user])
    }

    def list(User user){
        userService.list(user)
    }

    def delete(Long id){
        userService.delete(id)
        redirect action: "index"
//        def user = User.get(id)
//        user.delete()
//        redirect(action: "index")
    }

    def save(User user){
        if (user.hasErrors()) {
            render(view: "register", model: [users: user])
        } else {
            userService.save(user)
//            render(view: "loginPage")
            redirect(action: "index")
        }
    }

    def edit() {
//        [user: user]
        def auth = AppUtil.getAppSession()["AUTHORIZED"]
        render(view:'/user/edit', model:[edit: auth.user])
    }

    def update(User user) {
        if (user.hasErrors()) {
            render(view: "edit", model: [user: user])
        } else {
            userService.save(user)
            redirect(action: "index")
        }
    }

//    def getById(Long id) {
//        def user = User.findById(id)
//        render(view:'profile', model:[userss: user])
//    }
}
