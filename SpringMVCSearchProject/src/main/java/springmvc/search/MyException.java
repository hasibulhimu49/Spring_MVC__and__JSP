package springmvc.search;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class MyException {

    // Handles NullPointerException
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(value = NullPointerException.class)
    public String exceptionHandlerNull(Model model) {
        model.addAttribute("msg", "NullPointerException has occurred");
        return "error_page";
    }

    // Handles all other exceptions
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(value = Exception.class)
    public String exceptionHandlerAllType(Model model) {
        model.addAttribute("msg", "An unknown error occurred");
        return "error_page";
    }
}
