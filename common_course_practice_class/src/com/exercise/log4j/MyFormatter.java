package com.exercise.log4j;

import java.util.Date;
import java.util.logging.Formatter;
import java.util.logging.LogRecord;

public class MyFormatter extends Formatter {

	@Override
	public String format(LogRecord record) {
		// TODO Auto-generated method stub

		//		return record.getThreadID()+"::"+record.getSourceClassName()+"::"
		//				+record.getSourceMethodName()+"::"
		//				+new Date(record.getMillis())+"::"
		//				+record.getMessage()+"\n";


		return record.getSourceClassName()+"::" 
		+record.getSourceMethodName()+"::" 
		+record.getLevel()+"::"
		+new Date(record.getMillis())+"::"
		+record.getMessage()+"\n";
	}

}
