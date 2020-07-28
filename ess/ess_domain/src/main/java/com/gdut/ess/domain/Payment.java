package com.gdut.ess.domain;

import java.util.Date;

public class Payment {
    private String id;
    private Integer payType;    // 0 - 支付宝, 1 - 微信支付
    private Integer tradeType;  // 0 - 电费, 1 - 水费
    private double payMount;    // 支付金额
    private Date tradeTime;

    public Payment() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getPayType() {
        return payType;
    }

    public void setPayType(Integer payType) {
        this.payType = payType;
    }

    public Integer getTradeType() {
        return tradeType;
    }

    public void setTradeType(Integer tradeType) {
        this.tradeType = tradeType;
    }

    public double getPayMount() {
        return payMount;
    }

    public void setPayMount(double payMount) {
        this.payMount = payMount;
    }

    public Date getTradeTime() {
        return tradeTime;
    }

    public void setTradeTime(Date tradeTime) {
        this.tradeTime = tradeTime;
    }
}
