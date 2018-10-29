package com.techelevator;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

public class Logger {
	
	private static final String LOG_FILE = "Log.txt";
	
	public void logEvent(String eventType, double amount, double balance) throws IOException {  
			
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy  hh:mm:ss  a ");
		String strDate = formatter.format(date);
		
		String filepath = LOG_FILE;
		File file = new File(filepath);
		if (!file.exists()) {
			file.createNewFile();
		}
		
		try (PrintWriter writer = new PrintWriter(new FileOutputStream(file, true))) {
			
			String line = String.format("%-23s %-15s $%-10.2f $%.2f", strDate, eventType, amount, balance);
			
			writer.println(line);
		}
		
	}
	
}

