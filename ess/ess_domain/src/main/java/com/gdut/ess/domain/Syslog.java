package com.gdut.ess.domain;

import java.util.Date;

public class Syslog {
    private String id;
    private Date visitTime;
    private String username;
    private String ip;
    private String url;
    private Long excutionTime;
    private String method;

    public Syslog() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getVisitTime() {
        return visitTime;
    }

    public void setVisitTime(Date visitTime) {
        this.visitTime = visitTime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Long getExcutionTime() {
        return excutionTime;
    }

    public void setExcutionTime(Long excutionTime) {
        this.excutionTime = excutionTime;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }
}
