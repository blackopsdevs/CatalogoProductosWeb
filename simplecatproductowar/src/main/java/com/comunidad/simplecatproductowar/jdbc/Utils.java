package com.comunidad.simplecatproductowar.jdbc;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {

	public static int validarDominio(String usuario) {
		int bandera = 0;
		try {
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return bandera;
	}
	
	public static Date convertStringToDate(String fecha) {
		SimpleDateFormat formatoOrigen = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date = null;
		try {
			date = formatoOrigen.parse(fecha);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}

	
	public static String convertJsonToString(String valor) {
		String date = "";
		
		return date;
	}
}