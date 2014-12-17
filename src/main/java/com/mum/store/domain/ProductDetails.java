package com.mum.store.domain;

import java.util.Date;

import javax.persistence.*;

@Entity(name = "product_detail")
public class ProductDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String productStatus;
    private double price;
    private Boolean reservedOrOpen;
    private Date postedDate;
    private String detail;
    private String imagePath;

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Boolean getReservedOrOpen() {
        return reservedOrOpen;
    }

    public void setReservedOrOpen(Boolean reservedOrOpen) {
        this.reservedOrOpen = reservedOrOpen;
    }

    public Date getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(Date postedDate) {
        this.postedDate = postedDate;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }


}
