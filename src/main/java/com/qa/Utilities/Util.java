package com.qa.Utilities;

import java.util.Date;

public class Util {

	public static String emailWithDateTimeStamp() {
		Date date = new Date();
		String timeStamp = date.toString().replace(" ", ":").replace(":", "_");
		return "Roly" + timeStamp + "@gmail.com";
}
}
