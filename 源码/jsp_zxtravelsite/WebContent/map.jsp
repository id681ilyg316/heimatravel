<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>




<html>
<head>
<title>旅游网站</title><script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
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
                        <td width="18%" height="26" align="center" valign="middle" class="STYLE1"><strong>路线导航</strong></td>
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
						<%@ include file="baidumap/map.html"%>
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
</body>
</html>