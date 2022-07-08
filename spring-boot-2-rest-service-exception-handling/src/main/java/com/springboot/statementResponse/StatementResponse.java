package com.springboot.statementResponse;

import org.springframework.data.repository.NoRepositoryBean;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Data;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_DEFAULT)
@NoRepositoryBean
@Data
public class StatementResponse {

	private int id;
	private int accountId;
	private String accountType;
	private String accountNumber;
	private String dateField;
	private String amount;
	
	
	public StatementResponse(int id,int accountId, String accountType, String accountNumber, String dateField,
			String amount) {
		super();
		this.id=id;
		this.accountId = accountId;
		this.accountType = accountType;
		this.accountNumber = accountNumber;
		this.dateField = dateField;
		this.amount = amount;
	}

	public int getId() {
		return id;
	}
	
	public int getAccountId() {
		return accountId;
	}
	// Not Setter of AccountId required
	
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}
	public String getAccountNumber() {
		String hashAccountNum="XXXXXXXXX";
		return hashAccountNum.concat(accountNumber.substring(1, 5));
	
	}
	
	public String getDateField() {
		return dateField;
	}
	public void setDateField(String dateField) {
		this.dateField = dateField;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "StatementResponse [accountId=" + accountId + ", accountType=" + accountType + ", accountNumber="
				+ accountNumber + ", dateField=" + dateField + ", amount=" + amount + "]";
	}
	
	
}
