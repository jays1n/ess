package com.gdut.ess.domain;

import java.util.List;

public class Dorm {
    private String id;
    private Integer adr;    //0 - 东区, 1 - 西区
    private Integer dormArea;   //dormArea 栋
    private Integer roomNo;     //roomNo 号房
    private Integer memberNum;  //宿舍现入住人数

    private List<EletPerday> eletPerdays;
    private List<WaterPerday> waterPerdays;
    private List<EletWater> eletWaters;

    public Dorm() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getAdr() {
        return adr;
    }

    public void setAdr(Integer adr) {
        this.adr = adr;
    }

    public Integer getDormArea() {
        return dormArea;
    }

    public void setDormArea(Integer dormArea) {
        this.dormArea = dormArea;
    }

    public Integer getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(Integer roomNo) {
        this.roomNo = roomNo;
    }

    public Integer getMemberNum() {
        return memberNum;
    }

    public void setMemberNum(Integer memberNum) {
        this.memberNum = memberNum;
    }

    public List<EletPerday> getEletPerdays() {
        return eletPerdays;
    }

    public void setEletPerdays(List<EletPerday> eletPerdays) {
        this.eletPerdays = eletPerdays;
    }

    public List<WaterPerday> getWaterPerdays() {
        return waterPerdays;
    }

    public void setWaterPerdays(List<WaterPerday> waterPerdays) {
        this.waterPerdays = waterPerdays;
    }

    public List<EletWater> getEletWaters() {
        return eletWaters;
    }

    public void setEletWaters(List<EletWater> eletWaters) {
        this.eletWaters = eletWaters;
    }
}
