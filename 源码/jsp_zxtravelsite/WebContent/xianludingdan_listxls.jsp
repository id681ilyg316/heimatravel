<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xianludingdan.xls");
%>
<html>
  <head>
    <title>线路订单</title>
  </head>

  <body >
  <p>已有线路订单列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>线路编号</td>    <td bgcolor='#CCFFFF'>线路名称</td>    <td bgcolor='#CCFFFF'>景点名称</td>    <td bgcolor='#CCFFFF'>出发时间</td>    <td bgcolor='#CCFFFF'>出发地</td>    <td bgcolor='#CCFFFF'>发布人</td>    <td bgcolor='#CCFFFF'>线路报价</td>        <td bgcolor='#CCFFFF' width='80' align='center'>是否支付</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "xianludingdan_list.jsp?1=1"; 
    String sql =  "select * from xianludingdan where 1=1";
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
    <td><%=map.get("xianlubianhao") %></td>    <td><%=map.get("xianlumingcheng") %></td>    <td><%=map.get("jingdianmingcheng") %></td>    <td><%=map.get("chufashijian") %></td>    <td><%=map.get("chufadi") %></td>    <td><%=map.get("faburen") %></td>    <td><%=map.get("xianlubaojia") %></td>        <td align='center'><%=map.get("iszf")%></td>    
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

