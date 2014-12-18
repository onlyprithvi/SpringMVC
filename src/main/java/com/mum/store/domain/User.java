package com.mum.store.domain;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity(name="user")
public class User {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
	private long id;

    @Size(min=4,max = 40)
    @Column(name="first_name")
	private String firstName;

    @Size(min=4,max = 40)
    @Column(name="last_name")
	private String lastName;

    @Email
	private String username;

    @Size(max = 3)
	private String phone1;
    @Size(max = 3)
    private String phone2;
    @Size(max = 4)
    private String phone3;
    @NotEmpty
	private String address1;
    private String address2;
    @NotEmpty
    private String state;
    @NotEmpty
    private String country;
    @NotEmpty
    private String password;
    private String role;

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUsername() {
        return username;
    }

    public void setUserName(String userName) {
        this.username = userName;
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public String getPhone3() {
        return phone3;
    }

    public void setPhone3(String phone3) {
        this.phone3 = phone3;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName(){
        return firstName + " "+lastName;
    }

    public String getPhoneNumber(){
        return phone1.toString() + " - " + phone2.toString() + " - " +phone3.toString();
    }
}
