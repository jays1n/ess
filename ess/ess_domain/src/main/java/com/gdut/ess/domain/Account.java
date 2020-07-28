package com.gdut.ess.domain;

import java.util.List;

public class Account {
    private String id;
    private String username;
    private String pwd;
    private List<DormUser> dormUsers;
    private List<UserRole> userRoles;

    public Account() {
    }

    public List<UserRole> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(List<UserRole> userRoles) {
        this.userRoles = userRoles;
    }

    public List<DormUser> getDormUsers() {
        return dormUsers;
    }

    public void setDormUsers(List<DormUser> dormUsers) {
        this.dormUsers = dormUsers;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Override
    public String toString() {
        return "[" + username + " - " + pwd + "]";
    }
}
