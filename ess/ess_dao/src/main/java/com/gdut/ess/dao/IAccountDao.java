package com.gdut.ess.dao;

import com.gdut.ess.domain.Account;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IAccountDao {

    @Select("select * from account")
    List<Account> findAll() throws Exception;

    @Select("select * from account where username = #{username}")
    @Results({
        @Result(id = true,property = "id", column = "id"),
        @Result(property = "username", column = "username"),
        @Result(property = "pwd", column = "pwd")
    })
    Account findByUsername(String username) throws Exception;
}
