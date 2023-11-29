<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>友情链接</title>
    <LINK href="qtimages/css.css" type=text/css rel=stylesheet>

  </head>

 <% 
HashMap ext = new HashMap(); 
new CommDAO().insert(request,response,"youqinglianjie",ext,true,false,""); 
%>
  <body >
 <form  action="youqinglianjie_add.jsp?f=f"  name="f1"  onsubmit="return checkform();">
  添加友情链接:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
   	<tr><td width="200">网站名称：</td>
   	<td><input name='wangzhanmingcheng' type='text' id='wangzhanmingcheng' value='' onblur='checkform()'  /> <label id='clabelwangzhanmingcheng' /></td></tr>
	<tr><td width="200">网址：</td>
	<td><input name='wangzhi' type='text' id='wangzhi' value='http://' size="50" onblur='checkform()'  /> <label id='clabelwangzhi' /></td></tr>
    <tr>
      <td width="200">&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/popup.js'></script>
<script language=javascript src='js/ajax.js'></script>
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 
<script language=javascript >  
 
 function checkform(){  
var wangzhanmingchengobj = document.getElementById("wangzhanmingcheng");  
if(wangzhanmingchengobj.value==""){  
document.getElementById("clabelwangzhanmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入网站名称</font>";  
return false;  
}else{
document.getElementById("clabelwangzhanmingcheng").innerHTML="  ";  
}  
  
var wangzhanmingchengobj = document.getElementById("wangzhanmingcheng");  
if(wangzhanmingchengobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=youqinglianjie&col=wangzhanmingcheng&value="+wangzhanmingchengobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelwangzhanmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>该网站名称已存在</font>";  
return false;
}else{document.getElementById("clabelwangzhanmingcheng").innerHTML="  ";  
}  
}  

var wangzhiobj = document.getElementById("wangzhi");  
if(wangzhiobj.value=="" || wangzhiobj.value=="http://"){  
document.getElementById("clabelwangzhi").innerHTML="&nbsp;&nbsp;<font color=red>请输入网址</font>";  
return false;  
}else{
document.getElementById("clabelwangzhi").innerHTML="  ";  
}  

var wangzhiobj = document.getElementById("wangzhi");  
if(wangzhiobj.value!="" && wangzhiobj.value!="http://"){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=youqinglianjie&col=wangzhi&value="+wangzhiobj.value+"&checktype=insert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelwangzhi").innerHTML="&nbsp;&nbsp;<font color=red>该网址已存在</font>";  
return false;
}else{document.getElementById("clabelwangzhi").innerHTML="  ";  
}  
}  

return true;   
}   
popheight=450;
</script>  

