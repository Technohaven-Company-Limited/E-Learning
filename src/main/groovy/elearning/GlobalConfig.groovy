package elearning

class GlobalConfig {

    public static final def ROLE_NAME = [
            USER: "USER",
            TRAINER: "TRAINER",
            ADMINISTRATOR: "ADMINISTRATOR",
    ]


    public static Integer itemsPerPage() {
        return 5
    }
}
