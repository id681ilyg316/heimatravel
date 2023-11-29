<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>友情链接</title>
    

  </head>
  <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"youqinglianjie",ext,true,false,"youqinglianjie_list.jsp"); 
HashMap mmm = new CommDAO().getmap(id,"youqinglianjie"); 
%>
  <body >

  <form  action="youqinglianjie_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="f1"  onsubmit="return checkform();">
  修改友情链接:
  <br><br>

   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td width="200">网站名称：</td>
     <td><input name='wangzhanmingcheng' type='text' id='wangzhanmingcheng' value='' /></td></tr>
	 <tr><td width="200">网址：</td>
	 <td><input name='wangzhi' type='text' id='wangzhi' value='' size="50" /></td></tr>
    <tr>
      <td width="200">&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%=Info.tform(mmm,"f1")%>

