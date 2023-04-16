package elearning

class UserController {

    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST", update: "PUT"]

     UserService userService

    def index() {
        def user = User.list()
        [users: user]
    }

    def create() {
        [user: new User()]
    }

    def get(Long id){
        respond userService.get(id)
    }
    def list(User user){
        respond userService.list(user)
    }

    def delete(Long id){
        respond userService.delete(id)
    }

    def save(User user){
        if (user.hasErrors()) {
            render(view: "create", model: [users: user])
        } else {
            userService.save(user)
<<<<<<< Updated upstream
//            redirect(view: "loginPage")
            redirect(action: "index")
        }
//        respond userService.save( user)
    }
=======
            redirect(view: "loginPage")
//            redirect(action: "index")
        }
    }
//    def index() {
//        def users = User.list()
//        [users: users]
//    }
//
//    def create() {
//        [user: new User()]
//    }
//
//    def save(User user) {
//        def roleName = request.getParameter("roleName")
//        def fullName = request.getParameter("fullName")
//        def email = request.getParameter("email")
//        def userName = request.getParameter("userName")
//        def passWord = request.getParameter("passWord")
//
//        if (user.hasErrors()) {
//            render(view: "create", model: [user: user])
//        } else {
//            user.save()
//            redirect(action: "index")
//        }
//    }
//
//    def edit(User user) {
//        [user: user]
//    }
//
//    def update(User user) {
//        if (user.hasErrors()) {
//            render(view: "edit", model: [user: user])
//        } else {
//            user.save()
//            redirect(action: "index")
//        }
//    }
//
//    def delete(User user) {
//        user.delete()
//        redirect(action: "index")
//    }
>>>>>>> Stashed changes
}
