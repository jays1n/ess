package com.gdut.ess.service;

import com.gdut.ess.domain.Account;

import java.util.List;

public interface IAccountService {

    public List<Account> findAll() throws Exception;

    public Account findByUsername(String username) throws Exception;
}
