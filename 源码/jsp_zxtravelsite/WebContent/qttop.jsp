<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



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
 </script>
 


<table id="__01" width="1002" height="255" border="0" cellpadding="0" cellspacing="0">
          <tr>
            
          </tr>
          <tr>
            <td height="155" colspan="3" background="qtimages/1_01_02.gif"><table width="72%" height="51" border="0" align="left">
              <tr>
                <td><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
                    <div align="center" class="STYLE5">旅游网站</div>
                </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="32" colspan="3" background="qtimages/1_01_03.gif"><table width="88%" border="0" align="center" cellpadding="0" cellspacing="0" class="red">
              <tr>
                <td align="center"><strong><a href="index.jsp"><font  class="STYLE1">首页</font></a></strong></td>
                <td align="center"><strong><a href="news.jsp?lb=站内新闻"><font  class="STYLE1">站内新闻</font></a></strong></td>
                <td align="center"><strong><a href="dx_detail.jsp?lb=系统简介"><font  class="STYLE1">系统简介</font></a></strong></td>
                <td align="center"><strong><a href="lvyoujingdianlisttp.jsp"><font  class="STYLE1">景点展示</font></a></strong></td>
                <td align="center"><strong><a href="lvyouxianlulist.jsp"><font  class="STYLE1">线路推荐</font></a></strong></td>
                <td align="center"><strong><a href="jiudianxinxilist.jsp"><font  class="STYLE1">推荐酒店</font></a></strong></td>
                <td align="center"><strong><a href="map.jsp"><font  class="STYLE1">路线导航</font></a></strong></td>
                <td align="center"><strong><a href="news.jsp?lb=旅游攻略"><font  class="STYLE1">旅游攻略</font></a></strong></td>
                <td align="center"><strong><a href="lyblist.jsp"><font  class="STYLE1">在线留言</font></a></strong></td>
                <td align="center"><strong><a href="userreg.jsp"><font  class="STYLE1">用户注册</font></a></strong></td>
                <td align="center"><strong><a target="_blank" href="login.jsp"><font  class="STYLE1">后台</font></a></strong></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="37" colspan="3" background="qtimages/1_01_04.gif"><TABLE cellSpacing=0 cellPadding=0 width="98%" 
border=0>
              <TBODY>
                <TR>
                  <TD width="9%" align=center vAlign=center class="h2">&nbsp;</TD>
                  <TD width="91%" align=right vAlign=center><marquee behavior=alternate width=100% scrollAmount=3 class="STYLE6">
                    欢迎登陆我站，希望能给你带来好心情，其他话语请您自己修改，谢谢合作！（注：此处文字您可以在qttop.jsp源码中自己修改）
                  </MARQUEE></TD>
                </TR>
              </TBODY>
            </TABLE></td>
          </tr>
        </table>




