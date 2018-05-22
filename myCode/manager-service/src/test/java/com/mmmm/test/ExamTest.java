package com.mmmm.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class ExamTest {

	public static void main(String[] args) {

//		SimpleDateFormat dateFm = new SimpleDateFormat("EEEE");
//
//		dateFm.format(date);
//
//		System.out.println(dateFm.format(date));
		
		Date date = new Date();
		Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int w = cal.get(Calendar.DAY_OF_WEEK)-1;
        System.out.println(w);
	}
}
