package com.mkyong.web;

import java.sql.Date;

public class UsersEntity {
    private String username;
    private String password;
    private byte enabled;
    private String fname;
    private String sname;
    private String tname;
    private Date date;
    private String workRole;
    private String category;
    private String description;
    private String rank;
    private String status;
    private String phone;
    private String adress;
    private String email;
    private String photo_link;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public byte getEnabled() {
        return enabled;
    }

    public void setEnabled(byte enabled) {
        this.enabled = enabled;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getWorkRole() {
        return workRole;
    }

    public void setWorkRole(String workRole) {
        this.workRole = workRole;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoto_link() {
        return photo_link;
    }

    public void setPhoto_link(String photo_link) {
        this.photo_link = photo_link;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UsersEntity that = (UsersEntity) o;

        if (enabled != that.enabled) return false;
        if (username != null ? !username.equals(that.username) : that.username != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (fname != null ? !fname.equals(that.fname) : that.fname != null) return false;
        if (sname != null ? !sname.equals(that.sname) : that.sname != null) return false;
        if (tname != null ? !tname.equals(that.tname) : that.tname != null) return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        if (workRole != null ? !workRole.equals(that.workRole) : that.workRole != null) return false;
        if (category != null ? !category.equals(that.category) : that.category != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (rank != null ? !rank.equals(that.rank) : that.rank != null) return false;
        if (status != null ? !status.equals(that.status) : that.status != null) return false;
        if (phone != null ? !phone.equals(that.phone) : that.phone != null) return false;
        if (adress != null ? !adress.equals(that.adress) : that.adress != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (photo_link != null ? !photo_link.equals(that.photo_link) : that.photo_link != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = username != null ? username.hashCode() : 0;
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (int) enabled;
        result = 31 * result + (fname != null ? fname.hashCode() : 0);
        result = 31 * result + (sname != null ? sname.hashCode() : 0);
        result = 31 * result + (tname != null ? tname.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (workRole != null ? workRole.hashCode() : 0);
        result = 31 * result + (category != null ? category.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (rank != null ? rank.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (adress != null ? adress.hashCode() : 0);
        result = 31 * result + (photo_link != null ? photo_link.hashCode() : 0);
        result = 31 * result + (photo_link != null ? photo_link.hashCode() : 0);
        return result;
    }
}
