<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%@page import="util.DbBackup"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>锟斤拷锟捷憋拷锟斤拷</title>


</head>

<body>
	<%
		if (request.getSession().getAttribute("cx").equals("锟斤拷锟斤拷锟斤拷锟斤拷员")) {

			String backName = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date())+".sql";
	        DbBackup.dbBackUp("root","123456","db_zxtravelsite","D:/",backName);
	        String path = "D:/" + backName;
			out.print("<script>alert('锟斤拷锟斤拷锟缴癸拷!!锟斤拷锟斤拷锟斤拷锟斤拷锟捷匡拷锟窖成癸拷锟斤拷锟斤拷锟斤拷"+path+"');location.href='sy.jsp';</script>");

		} else {
			out.print("<script>alert('锟皆诧拷锟斤拷,锟斤拷没锟叫革拷权锟斤拷');location.href='sy.jsp';</script>");
		}
	%>
</body>
</html>





