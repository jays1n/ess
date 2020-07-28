package com.gdut.ess.service.impl;

import com.gdut.ess.dao.IAccountDao;
import com.gdut.ess.domain.Account;
import com.gdut.ess.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AccountServiceImpl implements IAccountService {

    @Autowired
    private IAccountDao iAccountDao;

    @Override
    public List<Account> findAll() throws Exception {
        return iAccountDao.findAll();
    }

    @Override
    public Account findByUsername(String username) throws Exception {
        return iAccountDao.findByUsername(username);
    }

}
