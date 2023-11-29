<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>线路订单详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xianludingdan");
     %>
  线路订单详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>线路编号：</td><td width='39%'><%=m.get("xianlubianhao")%></td><td width='11%'>线路名称：</td><td width='39%'><%=m.get("xianlumingcheng")%></td></tr><tr><td width='11%'>景点名称：</td><td width='39%'><%=m.get("jingdianmingcheng")%></td><td width='11%'>出发时间：</td><td width='39%'><%=m.get("chufashijian")%></td></tr><tr><td width='11%'>出发地：</td><td width='39%'><%=m.get("chufadi")%></td><td width='11%'>发布人：</td><td width='39%'><%=m.get("faburen")%></td></tr><tr><td width='11%'>线路报价：</td><td width='39%'><%=m.get("xianlubaojia")%></td><td width='11%'>附加说明：</td><td width='39%'><%=m.get("fujiashuoming")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


