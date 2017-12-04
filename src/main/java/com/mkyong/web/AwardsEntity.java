package com.mkyong.web;

import java.sql.Date;

public class AwardsEntity {
    private int awardId = 0;
    private String username;
    private Date date;
    private String awardName;

    public int getAwardId() {
        return awardId;
    }

    public void setAwardId(int awardId) {
        this.awardId = awardId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getAwardName() {
        return awardName;
    }

    public void setAwardName(String awardName) {
        this.awardName = awardName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AwardsEntity that = (AwardsEntity) o;

        if (awardId != that.awardId) return false;
        if (username != null ? !username.equals(that.username) : that.username != null) return false;
        if (date != null ? !date.equals(that.date) : that.date != null) return false;
        if (awardName != null ? !awardName.equals(that.awardName) : that.awardName != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = awardId;
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (date != null ? date.hashCode() : 0);
        result = 31 * result + (awardName != null ? awardName.hashCode() : 0);
        return result;
    }
}
