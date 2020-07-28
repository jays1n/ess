package com.gdut.ess.domain;

import java.util.List;

public class EletWater {
    private String id;
    private double preEletBalance;  // 电费预余额
    private double eletSupply;      // 电费补助
    private double eletBalance;     // 电费总余额
    private Integer eletStatus;     // 0 - 阈值过低 | 余额不足, 1 - 可用
    private double preWaterBalance; // 水费预余额
    private double waterSupply;     // 水费补助
    private double waterBalance;    // 水费总余额
    private Integer waterStatus;    // 0 - 阈值过低 | 余额不足, 1 - 可用
    private List<Payment> payments;

    public EletWater() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public double getPreEletBalance() {
        return preEletBalance;
    }

    public void setPreEletBalance(double preEletBalance) {
        this.preEletBalance = preEletBalance;
    }

    public double getEletSupply() {
        return eletSupply;
    }

    public void setEletSupply(double eletSupply) {
        this.eletSupply = eletSupply;
    }

    public double getEletBalance() {
        return eletBalance;
    }

    public void setEletBalance(double eletBalance) {
        this.eletBalance = eletBalance;
    }

    public Integer getEletStatus() {
        return eletStatus;
    }

    public void setEletStatus(Integer eletStatus) {
        this.eletStatus = eletStatus;
    }

    public double getPreWaterBalance() {
        return preWaterBalance;
    }

    public void setPreWaterBalance(double preWaterBalance) {
        this.preWaterBalance = preWaterBalance;
    }

    public double getWaterSupply() {
        return waterSupply;
    }

    public void setWaterSupply(double waterSupply) {
        this.waterSupply = waterSupply;
    }

    public double getWaterBalance() {
        return waterBalance;
    }

    public void setWaterBalance(double waterBalance) {
        this.waterBalance = waterBalance;
    }

    public Integer getWaterStatus() {
        return waterStatus;
    }

    public void setWaterStatus(Integer waterStatus) {
        this.waterStatus = waterStatus;
    }

    public List<Payment> getPayments() {
        return payments;
    }

    public void setPayments(List<Payment> payments) {
        this.payments = payments;
    }
}
