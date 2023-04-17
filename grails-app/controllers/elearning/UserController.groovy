package elearning

class UserController {

    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST", update: "PUT"]

     UserService userService

    def index() {
        def user = User.list()
        [users: user]
//        render "testing render text"
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
            render(view: "register", model: [users: user])
        } else {
            userService.save(user)
//            render(view: "loginPage")
            redirect(action: "index")
        }
    }

    def edit(User user) {
        [user: user]
    }
}
