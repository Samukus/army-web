package com.mkyong.web;

import java.sql.Date;

public class DutiesEntity {
    private int dutyId;
    private String username;
    private Date dateStart;
    private Date dateEnd;
    private String rank;
    private String militaryUnit;

    public int getDutyId() {
        return dutyId;
    }

    public void setDutyId(int dutyId) {
        this.dutyId = dutyId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    public Date getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(Date dateEnd) {
        this.dateEnd = dateEnd;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getMilitaryUnit() {
        return militaryUnit;
    }

    public void setMilitaryUnit(String militaryUnit) {
        this.militaryUnit = militaryUnit;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DutiesEntity that = (DutiesEntity) o;

        if (dutyId != that.dutyId) return false;
        if (username != null ? !username.equals(that.username) : that.username != null) return false;
        if (dateStart != null ? !dateStart.equals(that.dateStart) : that.dateStart != null) return false;
        if (dateEnd != null ? !dateEnd.equals(that.dateEnd) : that.dateEnd != null) return false;
        if (rank != null ? !rank.equals(that.rank) : that.rank != null) return false;
        if (militaryUnit != null ? !militaryUnit.equals(that.militaryUnit) : that.militaryUnit != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = dutyId;
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (dateStart != null ? dateStart.hashCode() : 0);
        result = 31 * result + (dateEnd != null ? dateEnd.hashCode() : 0);
        result = 31 * result + (rank != null ? rank.hashCode() : 0);
        result = 31 * result + (militaryUnit != null ? militaryUnit.hashCode() : 0);
        return result;
    }
}
