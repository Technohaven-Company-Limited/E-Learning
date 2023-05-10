package elearning

import grails.util.Holders
import org.springframework.web.multipart.MultipartFile

class FileUtil {

    public static String getRootPath(){
        return Holders.servletContext?.getRealPath("")
    }


    public static File makeDirectory(String path){
        File file = new File(path)
        if (!file.exists()){
            file.mkdirs()
        }
        return file
    }

    public static String uploadCourseImage(Long id, MultipartFile multipartFile){
        if (id && multipartFile){
            String courseImagePath = "${getRootPath()}course-courseLogo/"
            makeDirectory(courseImagePath)
            multipartFile.transferTo(new File(courseImagePath, id + "-" + multipartFile.originalFilename))
            return multipartFile.originalFilename
        }
        return ""
    }
}
