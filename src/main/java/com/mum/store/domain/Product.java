package com.mum.store.domain;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.mum.store.domain.enums.ProductStatus;

@Entity(name = "PRODUCT")
public class Product {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;

    @Size(min=4,max=50,message="{name.size.validator}")
    private String name;
    @Column(name = "reservedOrOpenStatus")
    private Boolean reservedOrOpen;

    @Column(name = "is_approved_by_admin")
    private Boolean isApprovedByAdmin =false;

    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name ="product_detail_id")
    private ProductDetails details;


    @Column(name ="owner_id")
    private long owner;

    public long getOwner() {
        return owner;
    }

    public void setOwner(long owner) {
        this.owner = owner;
    }

    public ProductDetails getDetails(){
        return details;
    }

    public void setDetails(ProductDetails details){
        this.details=details;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getReservedOrOpen() {
        return reservedOrOpen;
    }

    public void setReservedOrOpen(Boolean reservedOrOpen) {
        this.reservedOrOpen = reservedOrOpen;
    }

    public Boolean getIsApprovedByAdmin() {
        return isApprovedByAdmin;
    }

    public void setIsApprovedByAdmin(Boolean isApprovedByAdmin) {
        this.isApprovedByAdmin = isApprovedByAdmin;
    }

}
