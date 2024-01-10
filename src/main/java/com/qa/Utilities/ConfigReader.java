package com.qa.Utilities;

import java.io.FileInputStream;
import java.util.Properties;

public class ConfigReader {
	public static Properties initalizeConfigPropertiesFile() throws Exception {
		Properties prop = new Properties();
		FileInputStream ip = new FileInputStream("C:\\Users\\roly2\\eclipse-workspace\\Bootcamp_BDD_Cucumber_Framework\\src\\test\\resources\\properties_files\\config.properties");
		prop.load(ip);
		return prop;
	}
}