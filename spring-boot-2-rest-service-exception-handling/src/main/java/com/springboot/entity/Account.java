package com.springboot.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity(name = "account")
public class Account {
	
	@Id
	private int id;
	
	@Column(name = "accounttype")
	private String accountType;
	
	@Column(name  = "accountnumber")
	private String accountNumber;
	
	
	public Account() {
		super();
	}

	public Account(int id, String accountType, String accountNumber) {
		super();
		this.id = id;
		this.accountType = accountType;
		this.accountNumber = accountNumber;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}
	
		
}
