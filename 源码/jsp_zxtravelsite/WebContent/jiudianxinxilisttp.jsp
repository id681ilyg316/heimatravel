<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>




<html>
<head>
<title>酒店信息</title>

<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>

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
                        <td width="18%" height="26" align="center" valign="middle" class="STYLE1"><strong>酒店信息</strong></td>
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
						<form name="form1" id="form1" action="">
   搜索:  名称：<input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" /> 星级：<select name='xingji' id='xingji' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="一星级">一星级</option><option value="二星级">二星级</option><option value="三星级">三星级</option><option value="四星级">四星级</option><option value="五星级">五星级</option><option value="超五星">超五星</option></select>  城市：<input name="chengshi" type="text" id="chengshi" style='border:solid 1px #000000; color:#666666' size="12" />  均价：<input name="junjia1" type="text" id="junjia1"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />-<input name="junjia2" type="text" id="junjia2"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit5" value="切换视图"  style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiudianxinxilist.jsp';" />
</form>
						<table width="100%" height="12%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                           <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"jiudianxinxi"); 
    String url = "jiudianxinxilisttp.jsp?1=1"; 
    String sql =  "select * from jiudianxinxi where 1=1";
	
if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null ){}else{sql=sql+" and mingcheng like '%"+request.getParameter("mingcheng")+"%'";}
if(request.getParameter("xingji")=="" ||request.getParameter("xingji")==null ){}else{sql=sql+" and xingji like '%"+request.getParameter("xingji")+"%'";}
if(request.getParameter("chengshi")=="" ||request.getParameter("chengshi")==null ){}else{sql=sql+" and chengshi like '%"+request.getParameter("chengshi")+"%'";}
if (request.getParameter("junjia1")==""  ||request.getParameter("junjia1")==null ) {}else{sql=sql+" and junjia >= '"+request.getParameter("junjia1")+"'";}
if (request.getParameter("junjia2")==""  ||request.getParameter("junjia2")==null ) {}else {sql=sql+" and junjia <= '"+request.getParameter("junjia2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
                            <td align="center"><table width="150" height="153" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td height="126" align="center"><a href="jiudianxinxidetail.jsp?id=<%=map.get("id")%>"><img src="<%=map.get("tupian")%>" width="109" height="126" border="0" /></a></td>
                                </tr>
                                <tr>
                                  <td height="26" align="center"><%=map.get("mingcheng")%></td>
                                </tr>
                            </table></td>
                            <%
								if (i==4)
								{
									i=0;
									out.print("</tr><tr>");
								}
				  	}
					
				  %>
                          </tr>
                        </table>
						
${page.info }
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

