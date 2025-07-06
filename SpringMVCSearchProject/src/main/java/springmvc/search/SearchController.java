package springmvc.search;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {
    
    
    //Path variable
    @RequestMapping("/user/{userId}/{userName}")
    public String getUSerDetails(@PathVariable("userId") int userID, @PathVariable("userName") String userNAME)
    {
        System.out.println(userID);
        System.out.println(userNAME);
        return "home";
    }

    @RequestMapping("/home")
    public String home() {
        System.out.println("This is home handler");
        
  //for Exception practice 
        //String str=null;
        //System.out.println(str.length()); 
        
        return "home";
    }

    @RequestMapping("/search")
    public RedirectView search(@RequestParam("querybox") String query) {
        
        if (query.isBlank()) {
            return new RedirectView("/home");
        }

        String url = "https://www.google.com/search?q=" + query;
        RedirectView r = new RedirectView();

        r.setUrl(url);
        return r;
    }
    
//    //for exception 
//    
//    @ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
//    
//    @ExceptionHandler(value=NullPointerException.class)
//    public String exceptionHandlerNull(Model model)
//    {
//        model.addAttribute("msg", "NUll pointer exception has Occured");
//        return "error_page";
//    }
//    
//    
//    //for handle all type of  only using exception parent 
//    @ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
//    @ExceptionHandler(value=Exception.class)
//    public String exceptionHandlerAllType()
//    {
//        return "error_page";
//    }
    

}
