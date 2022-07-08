package com.springboot.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
@ResponseStatus(HttpStatus.NOT_FOUND)
public class StatementIdNotFoundException extends RuntimeException {

	public StatementIdNotFoundException(String exception) {
		super(exception);
	}

}
