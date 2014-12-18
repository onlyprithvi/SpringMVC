package com.mum.store.domain;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Prithvi on 12/17/2014.
 */
@Entity(name="TRANSACTIONS")
public class Transaction {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name ="buyerId")
    private User buyer;


    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name ="sellerId")
    private User seller;

    private Date transactionDate;

    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name ="productId")
    private Product product;


    public User getBuyer() {
        return buyer;
    }

    public void setBuyer(User buyer) {
        this.buyer = buyer;
    }

    public User getSeller() {
        return seller;
    }

    public void setSeller(User seller) {
        this.seller = seller;
    }

    public Date getTransactionDate() {
        return transactionDate;
    }

    public void setTransactionDate(Date transactionDate) {
        this.transactionDate = transactionDate;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


}
