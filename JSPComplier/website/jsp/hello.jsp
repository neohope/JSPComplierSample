<%@ page language="java" import="java.util.*, java.lang.management.*" pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>系统参数输出</title>
<style type="text/css">
table
{
    border-collapse:collapse;
}
td
{
    border:1px solid #427BD6;
}
</style>
</head>
 
<body style="background-color:#f2f2f2;">
<h1>环境变量</h1>
<table>
<%
    Map<String, String> map = System.getenv();
    for(String key : map.keySet())
    {
        out.println("<tr>");
        out.println("<td>");
        out.println(key);
        out.println("</td>");
        out.println("<td>");
        out.println(map.get(key));
        out.println("</td>");
        out.println("</tr>");
    }     
%>
</table>
</body>
</html>

