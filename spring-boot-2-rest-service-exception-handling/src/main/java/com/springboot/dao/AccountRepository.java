package com.springboot.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.entity.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer>{

}
