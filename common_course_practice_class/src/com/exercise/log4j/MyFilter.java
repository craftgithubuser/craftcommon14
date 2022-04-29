package com.exercise.log4j;

import java.util.logging.Filter;
import java.util.logging.Level;
import java.util.logging.LogRecord;

public class MyFilter implements  Filter {

	@Override
	public boolean isLoggable(LogRecord log) {
		// TODO Auto-generated method stub
		if(log.getLevel() == Level.CONFIG) return true;
		return true;
	}

}
