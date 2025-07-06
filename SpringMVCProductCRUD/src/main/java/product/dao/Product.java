package product.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer pid;

    private String pname;
    private String pdescription;
    private long pprice;

    // No-arg constructor (required by JPA)
    public Product() {
    }

    // Parameterized constructor
    public Product(Integer pid, String pname, String pdescription, long pprice) {
        this.pid = pid;
        this.pname = pname;
        this.pdescription = pdescription;
        this.pprice = pprice;
    }

    // Getters and setters
    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPdescription() {
        return pdescription;
    }

    public void setPdescription(String pdescription) {
        this.pdescription = pdescription;
    }

    public long getPprice() {
        return pprice;
    }

    public void setPprice(long pprice) {
        this.pprice = pprice;
    }

    @Override
    public String toString() {
        return "Product{" +
                "pid=" + pid +
                ", pname='" + pname + '\'' +
                ", pdescription='" + pdescription + '\'' +
                ", pprice=" + pprice +
                '}';
    }
}
