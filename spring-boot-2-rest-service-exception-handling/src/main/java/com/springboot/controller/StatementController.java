package com.springboot.controller;


import java.util.List;
import java.util.Optional;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.dao.StatementDetailRepository;
import com.springboot.exception.StatementIdNotFoundException;
import com.springboot.statementResponse.StatementResponse;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class StatementController {

	private static final Logger logger = LogManager.getLogger(StatementController.class);

	@Autowired
	private StatementDetailRepository statementDetailRepository;


	// To get data of statement and Account table for id    //WORKING
	@GetMapping("/admin/getStatementById/{accountId}") 
	public List<StatementResponse> getJointStatement(@PathVariable int accountId)
	{
		logger.info("Fetching admin statement for account id ");
		List<StatementResponse> stmtResponse=statementDetailRepository.getUserAdminStatementById(accountId);
		
		if (stmtResponse ==null) {
			throw new StatementIdNotFoundException("Statement for user id" + accountId +"not found");
		}
		return stmtResponse; 
	}


	//If user role will send any parameter , it returns 401 Unauthorized   //WORKING

	@RequestMapping(value = {"/user/{id}/{fromAmount}/{toAmount}", "/user/{id}/{fromAmount}"}, method = RequestMethod.GET)
	@ResponseStatus(code = HttpStatus.UNAUTHORIZED, reason = "User is not authorized to make this request")
	public ResponseEntity<StatementResponse> getStatement(@PathVariable int id){
		logger.error("Oops! We have an Error. Unauthorized");
		return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
	}
	

	// Filter based on accountNo and Amount Range   //WORKING
	@PostMapping("/admin/getAccountSummaryByAccountBalanceRange")
	public List<StatementResponse> getAccountSummaryByAccountBalanceRange(
			@RequestParam(name = "accountId") int accountId,
			@RequestParam(name = "fromAmount") String fromAmount,
			@RequestParam(name = "toAmount") String toAmount)
	{
		logger.info("Fetching admin statement for account id based on Amount Range ");
		
		List<StatementResponse> stmtResponse=null;
		
		if(accountId != 0) {
			 stmtResponse=statementDetailRepository.getAdminStatementByAmountRange(accountId,fromAmount,toAmount);
		}

		if (stmtResponse ==null) {
			throw new StatementIdNotFoundException("Statement for user id" + accountId +" not found");
		}
		return stmtResponse;

	}


	// Filter based on accountNo and Amount Range     //NOT WORKING
	@PostMapping("/admin/getAccountSummaryByDateRange")
	public List<StatementResponse> getAccountSummaryByDateRange(
			@RequestParam(name = "accountId") Optional<Integer> accountId,
			@RequestParam(name = "fromDate") Optional<String> fromDate,
			@RequestParam(name = "toDate") Optional<String> toDate) 
	{
		logger.info("Fetching admin statement for account id based on Amount Range ");

		return  statementDetailRepository.getAdminStatementByDate(accountId,
				fromDate ,toDate);		

	}


}
