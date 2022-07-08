package com.springboot.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.springboot.dao.AccountRepository;
import com.springboot.dao.StatementDetailRepository;
import com.springboot.entity.Account;
import com.springboot.entity.Statement;
import com.springboot.exception.AccountNotFoundException;

//This class contain some additional APIs

@RestController
public class AccountResource {
	 
	@Autowired
	private StatementDetailRepository statementDetailRepository;


	@Autowired
	private AccountRepository accountRepository;

	@GetMapping("/user/account/{id}")
	public Account retrieveStatement(@PathVariable int id) {
		Optional<Account> account = accountRepository.findById(id);

		if (!account.isPresent())
			throw new AccountNotFoundException("Account idnot found-" + id);

		EntityModel<Account> resource = EntityModel.of(account.get());

		return resource.getContent();
	}

	//To get all data of account table by URL
	 @GetMapping("/getAllAccountsDeatil")
	    public List<Account> fetchAccountList()
	    {
	        return accountRepository.findAll();
	    }

	 //To save detail in account by URL
	 @PostMapping("/saveAccount")
	    public Account saveAccount(
	        @RequestBody Account account)
	    {
	        return accountRepository.save(account);
	    }
	
	// To get all data of statement table
		@GetMapping("/getstatement")
		public List<com.springboot.entity.Statement> fetchStatement() {

			return statementDetailRepository.findAll();
		}

		//to same entry of statement by URL
		@PostMapping("/saveStatement")
		public Statement saveStatement(@RequestBody Statement statement) {

			return statementDetailRepository.save(statement);
		}

}
