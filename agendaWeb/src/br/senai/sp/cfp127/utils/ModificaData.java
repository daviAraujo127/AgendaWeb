package br.senai.sp.cfp127.utils;

public class ModificaData {
	
	public static String dataPort(String data) {
		String ano;
		String mes;
		String dia;
		
		ano = data.substring(0,4);
		mes = data.substring(5,7);
		dia = data.substring(8,10);
		
		return dia + "/" + mes + "/" + ano;
	}

}
