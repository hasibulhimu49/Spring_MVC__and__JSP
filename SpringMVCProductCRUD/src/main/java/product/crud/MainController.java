package product.crud;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import product.dao.Product;
import product.dao.ProductDaO;

@Controller
public class MainController {

    @Autowired
    private ProductDaO productDaO;

    @RequestMapping("/")
    public String homeHandler(Model m) {

        List<Product> products = productDaO.getProduct();
        m.addAttribute("product", products);

        return "home";
    }

    //show form
    @RequestMapping("/add-product")
    public String addProduct(Model m) {
        m.addAttribute("title", "Add Product");
        return "addProductForm";
    }

    //haldle all product form
    @RequestMapping(value = "/handle-product", method = RequestMethod.POST)
    public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
        System.out.println(product);
        this.productDaO.createProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }

    @RequestMapping(value = "/delete/{productId}")
    public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request) {
        this.productDaO.deleteProduct(productId);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() + "/");
        return redirectView;
    }

     @RequestMapping(value = "/update/{productId}")
    public String updateProductForm(@PathVariable("productId") int productId, Model m) {
        System.out.println("Product ID to update: " + productId);
        Product product = this.productDaO.getProduct(productId);
        m.addAttribute("product", product);
        return "updateForm";  // Make sure this JSP exists under /WEB-INF/views/
    }
}
