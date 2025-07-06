package springmvc.search;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComplexFormController {

    @RequestMapping("/complex")
    public String showForm() {
        System.out.println("This is complex controller");
        return "complex_form";
    }

//    @RequestMapping("/handleform")
//    public String formHandler(@RequestParam("userName") String name,@RequestParam("userId") Long id){
//        
//        System.out.println("This is formHandler");
//        System.out.println(name);
//        System.out.println(id);
//        return "complexsuccess";
//    }
    
    
    @RequestMapping("/handleform")
    public String formHandler(@ModelAttribute User user, BindingResult result) {
        System.out.println("This is formHandler");
        System.out.println(user); // prints full object details
        System.out.println(user.getAddress());
        
        if(result.hasErrors())
        {
            return "complex_form";
        }
        return "complexsuccess";
    }
}
