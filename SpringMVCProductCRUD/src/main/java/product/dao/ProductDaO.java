package product.dao;

import java.util.List;
import javax.annotation.PreDestroy;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component
public class ProductDaO {
    
    @Autowired
    private HibernateTemplate hibernateTemplate;
    
    // create
    @Transactional
    public void createProduct(Product product) {
        this.hibernateTemplate.save(product);
    }
    
    
    // get all products
    public List<Product> getProduct() {
        return this.hibernateTemplate.loadAll(Product.class);
    }
    
    // delete a single product
    @Transactional
    public void deleteProduct(int pid) {
        Product p = this.hibernateTemplate.load(Product.class, pid);
        this.hibernateTemplate.delete(p);
    }
    
    // get single product
    public Product getProduct(int pid) {
        return this.hibernateTemplate.get(Product.class, pid);
    }
    
    @Autowired
    private SessionFactory sessionFactory;

    @PreDestroy
    public void cleanUp() {
        if (sessionFactory != null) {
            sessionFactory.close();
            System.out.println("SessionFactory closed in @PreDestroy method.");
        }
    }

   
}
