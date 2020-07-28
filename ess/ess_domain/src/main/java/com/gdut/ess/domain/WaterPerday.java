package com.gdut.ess.domain;

import java.util.Date;

public class WaterPerday {
    private String id;
    private Date waterDay;
    private double waterUse;
    private double waterFee;

    public WaterPerday() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getWaterDay() {
        return waterDay;
    }

    public void setWaterDay(Date waterDay) {
        this.waterDay = waterDay;
    }

    public double getWaterUse() {
        return waterUse;
    }

    public void setWaterUse(double waterUse) {
        this.waterUse = waterUse;
    }

    public double getWaterFee() {
        return waterFee;
    }

    public void setWaterFee(double waterFee) {
        this.waterFee = waterFee;
    }
}
