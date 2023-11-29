<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>留言板</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<body >
  <p>已有留言板列表：</p>


<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="4%" bgcolor="A4B6D7">序号</td>
    <td width="12%" bgcolor='#A4B6D7'>昵称</td><td width="4%" bgcolor='#A4B6D7'>头像</td><td width="10%" bgcolor='#A4B6D7'>QQ</td><td width="11%" bgcolor='#A4B6D7'>邮箱</td><td width="16%" bgcolor='#A4B6D7'>电话</td>
    <td width="12%" bgcolor="A4B6D7">内容</td>
    <td width="12%" bgcolor="A4B6D7">添加时间</td>
    
    <td width="11%" bgcolor="A4B6D7">回复内容</td>
    <td width="8%" bgcolor="A4B6D7">操作</td>
  </tr>
  <% 
   new CommDAO().delete(request,"liuyanban"); 
    String url = "liuyanban_list.jsp?1=1"; 
    String sql =  "select * from liuyanban where 1=1 ";
    sql+=" order by id desc";
	//out.print(sql);
	ArrayList<HashMap> list = PageManager.getPages(url,10,sql, request ); 
	int i=0;
	for(HashMap map:list){ 
	i++;
     %>
  <tr>
    <td><%=i %></td>
    <td><%=map.get("cheng") %></td><td><%= map.get("xingbie") %></td><td><%= map.get("QQ") %></td><td><%= map.get("youxiang") %></td><td><%= map.get("dianhua") %></td>
    <td><%= map.get("neirong") %></td>
    <td><%= map.get("addtime") %></td>
    <td><%= map.get("huifuneirong") %></td>
    <td>  <a href="liuyanban_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="hf.jsp?id=<%=map.get("id")%>">回复</a></td>
  </tr>
  	<%
  }
   %>
</table>
<br>
以上数据共<%=i %>条,<a style="cursor:pointer" onClick="javascript:window.print();">打印本页</a>
</body>
</html>

