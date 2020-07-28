package com.gdut.ess.domain;

import java.util.List;

public class DormUser {
    private String id;
    private String uno;     //学生学号 || 宿管工号
    private String uname;   //学生姓名 || 宿管姓名
    private Integer usex;   //0 - 男, 1 - 女
    private String uphone;  //联系方式
    private Integer userStatus;     // 0 - 本科生, 1 - 研究生, 2 - 宿管
    private List<Dorm> dorms;

    public DormUser() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUno() {
        return uno;
    }

    public void setUno(String uno) {
        this.uno = uno;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public Integer getUsex() {
        return usex;
    }

    public void setUsex(Integer usex) {
        this.usex = usex;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public Integer getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Integer userStatus) {
        this.userStatus = userStatus;
    }

    public List<Dorm> getDorms() {
        return dorms;
    }

    public void setDorms(List<Dorm> dorms) {
        this.dorms = dorms;
    }
}
