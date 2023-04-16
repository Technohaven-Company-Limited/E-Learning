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
//            redirect(view: "loginPage")
            redirect(action: "index")
        }
//        respond userService.save( user)
    }
}
