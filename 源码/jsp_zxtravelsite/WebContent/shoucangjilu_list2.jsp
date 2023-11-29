<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>我的收藏</title><link rel="stylesheet" href="css.css" type="text/css">
</head>

<body>

<p>我的收藏：</p>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="25" bgcolor="#CCFFFF">序号</td>
    <td width="790" bgcolor='#CCFFFF'>标题 </td>
    <td width="135" align="center" bgcolor="#CCFFFF">收藏时间</td>
    <td width="75" align="center" bgcolor="#CCFFFF">操作</td>
  </tr>
 <% 
 new CommDAO().delete(request,"shoucangjilu"); 
    String url = "shoucangjilu_list2.jsp?1=1"; 
    String sql =  "select * from shoucangjilu where username='"+request.getSession().getAttribute("username")+"'";

    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,20,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>  <tr>
    <td width="25"><%=i %></td>
    <td><%
	 HashMap m = new CommDAO().getmap((String)map.get("xwid"),(String)map.get("biao"));
	 out.print(m.get((String)map.get("ziduan")));
	%></td>
    <td width="135" align="center"><%=map.get("addtime")%></td>
    <td width="75" align="center"><a href="shoucangjilu_list2.jsp?scid=<%=map.get("id")%>" onclick="return confirm('真的要删除？')" >删除</a> <a href="<%=map.get("biao")%>detail.jsp?id=<%=map.get("xwid")%>" target="_blank">详细</a></td>
  </tr>
  <%
  }
   %>
</table>

${page.info }   


</body>
</html>

