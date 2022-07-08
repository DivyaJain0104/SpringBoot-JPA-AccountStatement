package com.springboot.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class StatementDetail {
	@Id
	@GeneratedValue
	private Long id;
	private Long account_Id;
	private String date_Field;
	private String amount;
	
	public StatementDetail() {
		super();
	}

	public StatementDetail(Long id, Long account_Id, String date_Field,String amount) {
		super();
		this.id = id;
		this.account_Id = account_Id;
		this.date_Field = date_Field;
		this.amount = amount;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public Long getaccount_Id() {
		return account_Id;
	}

	public void setaccount_Id(Long account_Id) {
		this.account_Id = account_Id;
	}

	public String getdate_Field() {
		return date_Field;
	}

	public void setdate_Field(String date_Field) {
		this.date_Field = date_Field;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	
}
