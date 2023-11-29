<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>留言板</title>
    

  </head>

  <body >
  <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"liuyanban",ext,true,false,"liuyanban_list.jsp"); 
HashMap mmm = new CommDAO().getmap(id,"liuyanban"); 
%>
  <form  action="hf.jsp?f=f&id=<%=mmm.get("id")%>"  name="f1"  onsubmit="return checkform();">
  回复留言:
  <br>
  <br>

   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"><tr>
     <td>回复内容：</td><td><textarea name="huifuneirong" cols="50" rows="5" id="huifuneirong"></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%=Info.tform(mmm,"f1")%> 

