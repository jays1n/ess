package com.gdut.ess.domain;

import java.util.Date;

public class EletPerday {
    private String id;
    private Date eletDay;
    private double eletUse;
    private double eletFee;

    public EletPerday() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getEletDay() {
        return eletDay;
    }

    public void setEletDay(Date eletDay) {
        this.eletDay = eletDay;
    }

    public double getEletUse() {
        return eletUse;
    }

    public void setEletUse(double eletUse) {
        this.eletUse = eletUse;
    }

    public double getEletFee() {
        return eletFee;
    }

    public void setEletFee(double eletFee) {
        this.eletFee = eletFee;
    }
}
