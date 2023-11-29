<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>旅游线路</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有旅游线路列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  线路编号：<input name="xianlubianhao" type="text" id="xianlubianhao" style='border:solid 1px #000000; color:#666666' size="12" />  景点名称：<input name="jingdianmingcheng" type="text" id="jingdianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  线路名称：<input name="xianlumingcheng" type="text" id="xianlumingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  出发地：<input name="chufadi" type="text" id="chufadi" style='border:solid 1px #000000; color:#666666' size="12" />  发布人：<input name="faburen" type="text" id="faburen" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>线路编号</td>
    <td bgcolor='#CCFFFF'>景点名称</td>
    <td bgcolor='#CCFFFF'>出发时间</td>
    <td bgcolor='#CCFFFF'>线路名称</td>
    <td bgcolor='#CCFFFF'>出发地</td>
    <td bgcolor='#CCFFFF'>发布人</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"lvyouxianlu"); 
    String url = "lvyouxianlu_list2.jsp?1=1"; 
    String sql =  "select * from lvyouxianlu where faburen='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("xianlubianhao")=="" ||request.getParameter("xianlubianhao")==null ){}else{sql=sql+" and xianlubianhao like '%"+request.getParameter("xianlubianhao")+"%'";}
if(request.getParameter("jingdianmingcheng")=="" ||request.getParameter("jingdianmingcheng")==null ){}else{sql=sql+" and jingdianmingcheng like '%"+request.getParameter("jingdianmingcheng")+"%'";}
if(request.getParameter("xianlumingcheng")=="" ||request.getParameter("xianlumingcheng")==null ){}else{sql=sql+" and xianlumingcheng like '%"+request.getParameter("xianlumingcheng")+"%'";}
if(request.getParameter("chufadi")=="" ||request.getParameter("chufadi")==null ){}else{sql=sql+" and chufadi like '%"+request.getParameter("chufadi")+"%'";}
if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+request.getParameter("faburen")+"%'";}
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
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("xianlubianhao") %></td>
 <td><%=map.get("jingdianmingcheng") %></td>
 <td><%=map.get("chufashijian") %></td>
 <td><%=map.get("xianlumingcheng") %></td>
 <td><%=map.get("chufadi") %></td>
 
 <td><%=map.get("faburen") %></td>
 <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="lvyouxianlu_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="lvyouxianlu_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="lvyouxianludetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

