package com.springboot.accountStatement.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.ArrayList;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.springboot.dao.StatementDetailRepository;
import com.springboot.statementResponse.StatementResponse;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AccountStatementServiceApplicationTests {

	@Mock
	private StatementDetailRepository statementDetailRepository;
	
	
	// To get data of statement and Account table for id 
	@Test
	public void getStatementById() {
		
		
		ArrayList<StatementResponse> stmtResponse = new ArrayList<StatementResponse>();
		
		StatementResponse stmtResponse1 = new StatementResponse (17,2,"current","XXXXXXXXX0122","18.06.2019","841.608978747379");
		StatementResponse stmtResponse2 = new StatementResponse (20,2,"current","XXXXXXXXX0122","16.02.2020","724.478364643263");
		stmtResponse.add(stmtResponse1);
		stmtResponse.add(stmtResponse2);
		Mockito.when(statementDetailRepository.getUserAdminStatementById(2)).thenReturn(stmtResponse);
		assertEquals(stmtResponse,statementDetailRepository.getUserAdminStatementById(2));
}
	
	// Filter based on accountNo and Amount Range
	@Test
	public void getAccountSummaryByAccountBalanceRange() {
		
ArrayList<StatementResponse> stmtResponse = new ArrayList<StatementResponse>();
		
		StatementResponse stmtResponse1 = new StatementResponse (4,4,"savings","XXXXXXXXX0122","16.02.2019","619.245684218856");
		StatementResponse stmtResponse2 = new StatementResponse (108,4,"savings","XXXXXXXXX0122","24.09.2012","612.432943321757");
		stmtResponse.add(stmtResponse1);
		stmtResponse.add(stmtResponse2);
		
		Mockito.when(statementDetailRepository.getAdminStatementByAmountRange(4,"600","630")).thenReturn(stmtResponse);
		assertEquals(stmtResponse,statementDetailRepository.getAdminStatementByAmountRange(4,"600","630"));
	}
}
