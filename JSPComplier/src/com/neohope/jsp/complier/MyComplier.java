package com.neohope.jsp.complier;

import org.apache.jasper.JspC;

public class MyComplier {
	public static void main(String args[]) {
		try {
			JspC jspc = new JspC();
			jspc.setUriroot("D:\\MyProjects\\JSP\\JSPComplier\\website");
			jspc.setJspFiles("D:\\MyProjects\\JSP\\JSPComplier\\website\\jsp\\hello.jsp");
			jspc.setOutputDir("D:\\MyProjects\\JSP\\JSPComplier\\website\\WEB-INF\\jspclasses");
			jspc.setPackage("com.neohope.pages");
			jspc.setClassName("hello");
			jspc.setJavaEncoding("UTF-8");
			jspc.setCompile(true);
			jspc.execute();
			
			System.out.println("job done!");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
