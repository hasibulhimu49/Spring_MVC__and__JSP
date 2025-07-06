package springmvc.search;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MyInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

        System.out.println("This is preHandler");

        String name = request.getParameter("querybox");

        if (name != null && name.startsWith("x")) {
            response.setContentType("text/html");
            response.getWriter().println("<h3 style='color:red;'>Invalid name... Name should not start with 'x'</h3>");
            return false;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
            throws Exception {
        // Called after controller method execution, before view rendering
        System.out.println("This is postHandle");
//        if (modelAndView != null) {
//            System.out.println("View Name: " + modelAndView.getViewName());
//        }
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {

        // Called after the entire request has completed, after view rendering
        System.out.println("This is afterCompletion");
//        if (ex != null) {
//            System.out.println("Exception occurred: " + ex.getMessage());
//        }

    }

}

// http://localhost:8080/SpringMVCSearchProject/home?querybox=xapple i fired this url thats start with x
