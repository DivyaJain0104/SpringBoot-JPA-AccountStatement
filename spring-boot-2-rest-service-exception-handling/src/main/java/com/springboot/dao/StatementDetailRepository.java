package com.springboot.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.springboot.entity.Statement;
import com.springboot.statementResponse.StatementResponse;

@Repository
public interface StatementDetailRepository extends JpaRepository<Statement, Integer>{
	
	//User-Admin statement by accountId 
	  @Query("SELECT new com.springboot.statementResponse.StatementResponse(s.id ,s.accountId,a.accountType,a.accountNumber,s.dateField,s.amount) "
	  		+ "FROM Statement s JOIN s.account a where a.id = :accountId ")
	  public List<StatementResponse> getUserAdminStatementById(@Param("accountId")Integer accountId);
	 
	  
	//Admin statement by amount range 
	  @Query("SELECT new com.springboot.statementResponse.StatementResponse(s.id ,s.accountId,a.accountType,a.accountNumber,s.dateField,s.amount) "
		  		+ "FROM Statement s JOIN s.account a WHERE a.id = :accountId AND s.amount BETWEEN :fromAmount AND :toAmount")
		  public List<StatementResponse> getAdminStatementByAmountRange(@Param("accountId")Integer accountId,@Param("fromAmount")String fromAmount,@Param("toAmount")String toAmount);

	  
	//Admin statement by date range 
	  @Query("SELECT new com.springboot.statementResponse.StatementResponse(s.id ,s.accountId,a.accountType,a.accountNumber,s.dateField,s.amount) "
	  + "FROM Statement s JOIN s.account a WHERE a.id = :accountId "
	  + "AND TO_DATE(s.dateField, 'DD.MM.YYYY') >= TO_DATE(:fromDate, 'DD/MM/YYYY') AND\n"
	  + "TO_DATE(s.dateField, 'DD.MM.YYYY') <= TO_DATE(:toDate, 'DD/MM/YYYY')"
	  )
	   
	  public List<StatementResponse> getAdminStatementByDate(@Param("accountId") Optional<Integer> accountId,
				@Param("fromDate") Optional<String> fromDate,@Param("toDate")Optional<String> toDate);
	  
}
