<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
<head>
<title>旅游网站</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
	background-image: url(images/hsgbg3.gif);
	background-color: #8BC445;
}
.STYLE3 {color: #528311; font-size: 12px; }
.STYLE4 {color: #548E08}
.STYLE9 {color: #528311; font-size:12px}

-->
</style>
</head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("用户名或密码错误");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("验证码错误");
 <%}%>
 
 popheight = 39;

function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.pagerandom.value=="")
	{
		alert('请输入完整');
		return false;
	}
}

function ma()
{
var a = document.getElementById("yzm");
var myDate=new Date()
a.src="ma.jsp?d="+myDate;
}

           
           </script>     
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div style="font-family:宋体; color:#0066cc;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 36px; margin-top:5pt">
  <div align="center" class="STYLE4" >旅游网站</div>
</div>
<p>&nbsp;</p>
<table width="485" height="346" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td valign="top"><table width="485" height="346" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="485" height="346" background="images/hsgbg2.gif"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="72">&nbsp;</td>
          </tr>
          <tr>
            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="48%">&nbsp;</td>
                  <td width="52%"><form action="jspmlywzhsg53934134?ac=adminlogin&a=a" name="form1" style="display: inline"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="44" height="30"><span class="STYLE9">用户:</span></td>
            <td height="30" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE9">密码:</span></td>
            <td height="30" colspan="2"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE9">权限:</span></td>
            <td height="30" colspan="2"><select name="cx" id="cx">
                <option value="管理员">管理员</option>
              </select>
            </td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE9">验证码:</span></td>
            <td width="59" height="30"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" />
            <td width="102"><a href="javascript:loadimage();"><img alt="看不清请点我！" name="randImage" id="randImage" src="image.jsp" width="75" height="22" border="0" align="absmiddle" > </a></td>
          </tr>
          <tr>
            <td height="30" colspan="3"><input type="submit" name="Submit" value="登陆" onClick="return check();" style="background:url(images/the_formbtn.gif) no-repeat;color:#000000;width:80px;height: 24px; border:0px;line-height:24px; font-size:12px;margin-right: 5px; cursor:pointer">
                <input type="reset" name="Submit2" value="重置" style="background:url(images/the_formbtn.gif) no-repeat;color:#000000;width:80px;height: 24px; border:0px;line-height:24px; font-size:12px;margin-right: 5px; cursor:pointer" ></td>
          </tr>
        </table> </form></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>




