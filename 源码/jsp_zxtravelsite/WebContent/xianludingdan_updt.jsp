<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>线路订单</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"xianludingdan",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xianludingdan"); 

%>
  <form  action="xianludingdan_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改线路订单:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>线路编号：</td><td><input name='xianlubianhao' type='text' id='xianlubianhao' value='<%= mmm.get("xianlubianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>线路名称：</td><td><input name='xianlumingcheng' type='text' id='xianlumingcheng' value='<%= mmm.get("xianlumingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>景点名称：</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='<%= mmm.get("jingdianmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>出发时间：</td><td><input name='chufashijian' type='text' id='chufashijian' value='<%= mmm.get("chufashijian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>出发地：</td><td><input name='chufadi' type='text' id='chufadi' value='<%= mmm.get("chufadi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>发布人：</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>线路报价：</td><td><input name='xianlubaojia' type='text' id='xianlubaojia' value='<%= mmm.get("xianlubaojia")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>附加说明：</td><td><textarea name='fujiashuoming' cols='50' rows='5' id='fujiashuoming' style='border:solid 1px #000000; color:#666666'><%=mmm.get("fujiashuoming")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


