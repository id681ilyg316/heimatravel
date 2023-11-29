<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>线路订单</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"lvyouxianlu");
 String xianlubianhao="";  	String xianlumingcheng="";  	String jingdianmingcheng="";  	String chufashijian="";  	String chufadi="";  	String faburen="";  	
 xianlubianhao=(String)mlbdq.get("xianlubianhao");  	xianlumingcheng=(String)mlbdq.get("xianlumingcheng");  	jingdianmingcheng=(String)mlbdq.get("jingdianmingcheng");  	chufashijian=(String)mlbdq.get("chufashijian");  	chufadi=(String)mlbdq.get("chufadi");  	faburen=(String)mlbdq.get("faburen");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="xianludingdan_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){



ext.put("iszf","否");


}
new CommDAO().insert(request,response,"xianludingdan",ext,true,false,""); 
%>

  <body >
 <form  action="xianludingdan_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加线路订单:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">线路编号：</td><td><input name='xianlubianhao' type='text' id='xianlubianhao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xianlubianhao.value='<%=xianlubianhao%>';document.form1.xianlubianhao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">线路名称：</td><td><input name='xianlumingcheng' type='text' id='xianlumingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xianlumingcheng.value='<%=xianlumingcheng%>';document.form1.xianlumingcheng.setAttribute("readOnly",'true');</script>		<tr><td  width="200">景点名称：</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.jingdianmingcheng.value='<%=jingdianmingcheng%>';document.form1.jingdianmingcheng.setAttribute("readOnly",'true');</script>		<tr><td  width="200">出发时间：</td><td><input name='chufashijian' type='text' id='chufashijian' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.chufashijian.value='<%=chufashijian%>';document.form1.chufashijian.setAttribute("readOnly",'true');</script>		<tr><td  width="200">出发地：</td><td><input name='chufadi' type='text' id='chufadi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.chufadi.value='<%=chufadi%>';document.form1.chufadi.setAttribute("readOnly",'true');</script>		<tr><td  width="200">发布人：</td><td><input name='faburen' type='text' id='faburen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly"  readonly='readonly' /></td></tr><script language="javascript">document.form1.faburen.value='<%=faburen%>';document.form1.faburen.setAttribute("readOnly",'true');</script>		<tr><td  width="200">线路报价：</td><td><input name='xianlubaojia' type='text' id='xianlubaojia' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelxianlubaojia' />必需数字型</td></tr>		<tr><td  width="200">附加说明：</td><td><textarea name='fujiashuoming' cols='50' rows='5' id='fujiashuoming' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var xianlubaojiaobj = document.getElementById("xianlubaojia"); if(xianlubaojiaobj.value!=""){ if(/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/.test(xianlubaojiaobj.value)){document.getElementById("clabelxianlubaojia").innerHTML=""; }else{document.getElementById("clabelxianlubaojia").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}      


return true;   
}   
popheight=450;
</script>  


