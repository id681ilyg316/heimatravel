<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>旅游线路</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"lvyoujingdian");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("faburen",(String)request.getSession().getAttribute("username"),"lvyoujingdian");
  String jingdianmingcheng="";
  	String chufashijian="";
  	
  jingdianmingcheng=(String)mlbdq.get("jingdianmingcheng");
  	chufashijian=(String)mlbdq.get("chufashijian");
  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="lvyouxianlu_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","否");
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"lvyouxianlu",ext,true,false,""); 
%>

  <body >
 <form  action="lvyouxianlu_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加旅游线路:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">线路编号：</td><td><input name='xianlubianhao' type='text' id='xianlubianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">景点名称：</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabeljingdianmingcheng' /></td></tr><script language="javascript">document.form1.jingdianmingcheng.value='<%=jingdianmingcheng%>';</script>
		<tr><td  width="200">出发时间：</td><td><input name='chufashijian' type='text' id='chufashijian' value='' onblur='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>
		<tr><td  width="200">线路名称：</td><td><input name='xianlumingcheng' type='text' id='xianlumingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelxianlumingcheng' /></td></tr>
		<tr><td  width="200">出发地：</td><td><input name='chufadi' type='text' id='chufadi' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelchufadi' /></td></tr>
		<tr><td  width="200">线路简介：</td><td><textarea name='xianlujianjie' cols='50' rows='5' id='xianlujianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		<tr><td  width="200">发布人：</td><td><input name='faburen' type='text' id='faburen' onblur='checkform()' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" />&nbsp;*<label id='clabelfaburen' /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var jingdianmingchengobj = document.getElementById("jingdianmingcheng"); if(jingdianmingchengobj.value==""){document.getElementById("clabeljingdianmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入景点名称</font>";return false;}else{document.getElementById("clabeljingdianmingcheng").innerHTML="  "; } 
	var xianlumingchengobj = document.getElementById("xianlumingcheng"); if(xianlumingchengobj.value==""){document.getElementById("clabelxianlumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入线路名称</font>";return false;}else{document.getElementById("clabelxianlumingcheng").innerHTML="  "; } 
	var chufadiobj = document.getElementById("chufadi"); if(chufadiobj.value==""){document.getElementById("clabelchufadi").innerHTML="&nbsp;&nbsp;<font color=red>请输入出发地</font>";return false;}else{document.getElementById("clabelchufadi").innerHTML="  "; } 
	var faburenobj = document.getElementById("faburen"); if(faburenobj.value==""){document.getElementById("clabelfaburen").innerHTML="&nbsp;&nbsp;<font color=red>请输入发布人</font>";return false;}else{document.getElementById("clabelfaburen").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


