<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=lvyoujingdian.xls");
%>
<html>
  <head>
    <title>旅游景点</title>
  </head>

  <body >
  <p>已有旅游景点列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>景点编号</td>
    <td bgcolor='#CCFFFF'>景点名称</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>景点主图</td>
    <td bgcolor='#CCFFFF'>所属地区</td>
    
    
    <td bgcolor='#CCFFFF'>开放时间</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "lvyoujingdian_list.jsp?1=1"; 
    String sql =  "select * from lvyoujingdian where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("jingdianbianhao") %></td>
    <td><%=map.get("jingdianmingcheng") %></td>
    <td width='90'><a href='<%=map.get("jingdianzhutu") %>' target='_blank'><img src='<%=map.get("jingdianzhutu") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("suoshudiqu") %></td>
    
    
    <td><%=map.get("kaifangshijian") %></td>
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=lvyoujingdian" onClick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

