For Building and running the app you need:-
JDK1.8


Running the Application Locally:-
There are several ways to run a Spring Boot application on your local machine. One way is to execute the main method in the com.springboot.AccountStatementServiceApplication class from your IDE.


API:-

1)To get data of Statement and Account table for particular id with hashed value of account number
 
 http://localhost:8081/admin/getAccountSummaryByAccountBalanceRange
 
  @GetMapping("/admin/getStatementById/{accountId}")
  
2)If user role will send any parameter apart from id, it returns 401 Unauthorized 

http://localhost:8081/user/2/431/123

@RequestMapping(value = {"/user/{id}/{fromAmount}/{toAmount}", "/user/{id}/{fromAmount}"}, method = RequestMethod.GET)

3)To get data  based on accountNo and Amount Range for Admin  //WORKING
	
@PostMapping("/admin/getAccountSummaryByAccountBalanceRange")

 http://localhost:8081/admin/getAccountSummaryByAccountBalanceRange
	
	 