<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>




<html>
<head>
<title>旅游线路</title>
<!--bixanjxiqxi-->
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.jsp';</script>");
	return;
}
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"lvyoujingdian");
  String jingdianmingcheng="";
  	String chufashijian="";
  	
  jingdianmingcheng=(String)mlbdq.get("jingdianmingcheng");
  	chufashijian=(String)mlbdq.get("chufashijian");
  	

   %>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script language=javascript src='js/ajax.js'></script>
	<script language="javascript">
function checkform()
{
	var jingdianmingchengobj = document.getElementById("jingdianmingcheng"); if(jingdianmingchengobj.value==""){document.getElementById("clabeljingdianmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入景点名称</font>";return false;}else{document.getElementById("clabeljingdianmingcheng").innerHTML="  "; } 
	var xianlumingchengobj = document.getElementById("xianlumingcheng"); if(xianlumingchengobj.value==""){document.getElementById("clabelxianlumingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入线路名称</font>";return false;}else{document.getElementById("clabelxianlumingcheng").innerHTML="  "; } 
	var chufadiobj = document.getElementById("chufadi"); if(chufadiobj.value==""){document.getElementById("clabelchufadi").innerHTML="&nbsp;&nbsp;<font color=red>请输入出发地</font>";return false;}else{document.getElementById("clabelchufadi").innerHTML="  "; } 
	var faburenobj = document.getElementById("faburen"); if(faburenobj.value==""){document.getElementById("clabelfaburen").innerHTML="&nbsp;&nbsp;<font color=red>请输入发布人</font>";return false;}else{document.getElementById("clabelfaburen").innerHTML="  "; } 
	
}
function gow()
{
	document.location.href="lvyouxianluadd.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="1002" height="1108" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td><table id="__01" width="1002" height="774" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><table id="__01" width="770" height="774" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td valign="top"><table id="__01" width="770" height="251" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="770" height="37" background="qtimages/3.gif"><table width="100%" height="73%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="18%" height="26" align="center" valign="middle" class="STYLE1"><strong>旅游线路</strong></td>
                        <td width="76%" align="center">&nbsp;</td>
                        <td width="6%" valign="top"></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><table id="__01" width="770" height="201" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="8" background="qtimages/1_02_01_02_02_01.gif">&nbsp;</td>
                        <td width="751" height="722" align="center" valign="top" >
						
  <% 
  
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//qiuji
//wxfladd
ext.put("issh","否");
//youzhifu
//jitihuan
 }
new CommDAO().insert(request,response,"lvyouxianlu",ext,true,false,""); 
%>
   <form  action="lvyouxianluadd.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
    <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
       <tr><td  width="200">线路编号：</td><td><input name='xianlubianhao' type='text' id='xianlubianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">景点名称：</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabeljingdianmingcheng' /></td></tr><script language="javascript">document.form1.jingdianmingcheng.value='<%=jingdianmingcheng%>';</script>
		<tr><td  width="200">出发时间：</td><td><input name='chufashijian' type='text' id='chufashijian' value='' onblur='' style='border:solid 1px #000000; color:#666666' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})"  readonly='readonly' /></td></tr>
		<tr><td  width="200">线路名称：</td><td><input name='xianlumingcheng' type='text' id='xianlumingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelxianlumingcheng' /></td></tr>
		<tr><td  width="200">出发地：</td><td><input name='chufadi' type='text' id='chufadi' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelchufadi' /></td></tr>
		<tr><td  width="200">线路简介：</td><td><textarea name='xianlujianjie' cols='50' rows='5' id='xianlujianjie' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		<tr><td  width="200">发布人：</td><td><input name='faburen' type='text' id='faburen' onblur='checkform()' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" />&nbsp;*<label id='clabelfaburen' /></td></tr>
		
   
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
	</table>
  </form>
						</td>
                        <td width="11" background="qtimages/1_02_01_02_02_03.gif">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="qtimages/1_02_01_02_03.gif" width="770" height="13" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              
            </table></td>
            <td valign="top"><%@ include file="qtleft.jsp"%></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td>		
		<%@ include file="qtdown.jsp"%></td>
	</tr>
</table>
<!-- dfexnxxiaxng -->
</body>
</html>
<!--suxilxatxihuxan-->
