package com.springboot.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "statement_detail")
public class Statement implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	private int id;

	@Column(name = "account_id")
	private int accountId;

	@Column(name = "date_field")
	private String dateField;

	@Column(name = "amount")
	private String amount;
	
	  @ManyToOne(fetch = FetchType.LAZY)
	  @JoinColumn(name ="account_id", insertable = false, updatable = false) 
	  private Account account;
	
	public Statement() {
		super();
	}

	public Statement(int id, int accountId, String dateField, String amount) {
		super();
		this.id=id;
		this.accountId = accountId;
		this.dateField = dateField;
		this.amount = amount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getaccountId() {
		return accountId;
	}

	public void setaccountId(int accountId) {
		this.accountId = accountId;
	}

	public String getdateField() {
		return dateField;
	}

	public void setdateField(String dateField) {
		this.dateField = dateField;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

}
