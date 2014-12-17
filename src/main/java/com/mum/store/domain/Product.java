package com.mum.store.domain;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.mum.store.domain.enums.ProductStatus;

@Entity(name = "PRODUCT")
public class Product {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private long id;
    @Size(min=4,max=50,message="{name.size.validator}")
    private String name;

    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name ="id")
    private ProductDetails details;

    public ProductDetails getDetails(){
        return details;
    }

    public void setDetails(ProductDetails details){
        this.details=details;
    }

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
