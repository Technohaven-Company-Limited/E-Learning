package elearning

class UserController {

    static  allowedMethods = [get: "GET", list: "GET", delete: "DELETE" , save: "POST"]

     UserService userService

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

        respond userService.save( user)
    }

    def index() { }
}
