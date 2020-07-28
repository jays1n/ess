package com.gdut.ess.controller;

import com.gdut.ess.domain.Account;
import com.gdut.ess.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private IAccountService iAccountService;

    //查询全部用户的账号密码信息
    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Account> accounts = iAccountService.findAll();
        mv.addObject("accounts", accounts);
        mv.setViewName("main");
        return mv;
    }

    //通过学号查询单个用户的账号密码信息
    @RequestMapping("/findByUsername")
    public ModelAndView findByUsername(@RequestParam(name = "username", required = true) String username) throws Exception{
        ModelAndView mv = new ModelAndView();
        Account account = iAccountService.findByUsername(username);
        mv.addObject("account",account);
        mv.setViewName("main");
        return mv;
    }
}
