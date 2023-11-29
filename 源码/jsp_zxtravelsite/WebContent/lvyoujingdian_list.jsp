<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>旅游景点</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有旅游景点列表：</p>
  <form name="form1" id="form1" action="">
   搜索:  景点编号：<input name="jingdianbianhao" type="text" id="jingdianbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  景点名称：<input name="jingdianmingcheng" type="text" id="jingdianmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  所属地区：<input name="suoshudiqu" type="text" id="suoshudiqu" style='border:solid 1px #000000; color:#666666' size="12" />  开放时间：<input name="kaifangshijian" type="text" id="kaifangshijian" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='lvyoujingdian_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>景点编号</td>
    <td bgcolor='#CCFFFF'>景点名称</td>
    <td bgcolor='#CCFFFF' width='90' align='center'>景点主图</td>
    <td bgcolor='#CCFFFF'>所属地区</td>
    
    
    <td bgcolor='#CCFFFF'>开放时间</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
	<td width="90" align="center" bgcolor="#CCFFFF">评论管理</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"lvyoujingdian"); 
    String url = "lvyoujingdian_list.jsp?1=1"; 
    String sql =  "select * from lvyoujingdian where 1=1";
	
if(request.getParameter("jingdianbianhao")=="" ||request.getParameter("jingdianbianhao")==null ){}else{sql=sql+" and jingdianbianhao like '%"+request.getParameter("jingdianbianhao")+"%'";}
if(request.getParameter("jingdianmingcheng")=="" ||request.getParameter("jingdianmingcheng")==null ){}else{sql=sql+" and jingdianmingcheng like '%"+request.getParameter("jingdianmingcheng")+"%'";}
if(request.getParameter("suoshudiqu")=="" ||request.getParameter("suoshudiqu")==null ){}else{sql=sql+" and suoshudiqu like '%"+request.getParameter("suoshudiqu")+"%'";}
if(request.getParameter("kaifangshijian")=="" ||request.getParameter("kaifangshijian")==null ){}else{sql=sql+" and kaifangshijian like '%"+request.getParameter("kaifangshijian")+"%'";}
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
    <td><%=map.get("jingdianbianhao") %></td>
    <td><%=map.get("jingdianmingcheng") %></td>
    <td width='90'><a href='<%=map.get("jingdianzhutu") %>' target='_blank'><img src='<%=map.get("jingdianzhutu") %>' width=88 height=99 border=0 /></a></td>
    <td><%=map.get("suoshudiqu") %></td>
    
    
    <td><%=map.get("kaifangshijian") %></td>
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=lvyoujingdian" onClick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
	<td width="90" align="center"><a href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=lvyoujingdian">评论管理</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="lvyoujingdian_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="lvyoujingdian_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="lvyoujingdiandetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
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

