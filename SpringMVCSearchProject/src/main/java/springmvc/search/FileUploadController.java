package springmvc.search;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

    @RequestMapping("/file")
    public String showUploadFile() {
        return "file_form";
    }

    @RequestMapping(path = "/uploadImage", method = RequestMethod.POST)
    public String fileUpload(@RequestParam("profile") CommonsMultipartFile file,
                             HttpSession session,
                             Model model) {
        System.out.println("file upload handler");
        System.out.println("Filename: " + file.getOriginalFilename());
        System.out.println("Content type: " + file.getContentType());

        // Set the file save path
        String path = session.getServletContext().getRealPath("/") +
                      "resources" + File.separator +
                      "images" + File.separator +
                      file.getOriginalFilename();
        System.out.println("Saving to path: " + path);

        try {
            // Ensure the directory exists
            File saveFile = new File(path);
            saveFile.getParentFile().mkdirs(); // ✅ Create folder if missing

            // Write file data
            FileOutputStream fos = new FileOutputStream(saveFile);
            fos.write(file.getBytes());
            fos.close();

            System.out.println("File uploaded successfully");
            model.addAttribute("msg", "Uploaded successfully");
            model.addAttribute("filename", file.getOriginalFilename());

        } catch (IOException e) {
            e.printStackTrace(); // ✅ Show exact error
            System.out.println("Uploading Error");
            model.addAttribute("msg", "Uploading error: " + e.getMessage());
        }

        return "filesuccess";
    }
}
