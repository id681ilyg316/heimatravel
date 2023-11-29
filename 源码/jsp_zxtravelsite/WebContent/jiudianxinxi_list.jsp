<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>酒店信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>


  <body >
  <p>已有酒店信息列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  名称：<input name="mingcheng" type="text" id="mingcheng" style='border:solid 1px #000000; color:#666666' size="12" /> 星级：<select name='xingji' id='xingji' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="一星级">一星级</option><option value="二星级">二星级</option><option value="三星级">三星级</option><option value="四星级">四星级</option><option value="五星级">五星级</option><option value="超五星">超五星</option></select>  城市：<input name="chengshi" type="text" id="chengshi" style='border:solid 1px #000000; color:#666666' size="12" />  均价：<input name="junjia1" type="text" id="junjia1"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />-<input name="junjia2" type="text" id="junjia2"  value='' style='border:solid 1px #000000; color:#666666;width:30px' />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='jiudianxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>编号</td>
    <td bgcolor='#CCFFFF'>名称</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>图片</td>
    <td bgcolor='#CCFFFF'>星级</td>
    <td bgcolor='#CCFFFF'>城市</td>
    <td bgcolor='#CCFFFF'>均价</td>
    
	<td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"jiudianxinxi"); 
    String url = "jiudianxinxi_list.jsp?1=1"; 
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
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>
    <td><%=map.get("mingcheng") %></td>
    <td width='90' align='center'><a href='<%=map.get("tupian") %>' target='_blank'><img src='<%=map.get("tupian") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("xingji") %></td>
    <td><%=map.get("chengshi") %></td>
    <td><%=map.get("junjia") %></td>
    
	<td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="jiudianxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="jiudianxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="jiudianxinxidetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

