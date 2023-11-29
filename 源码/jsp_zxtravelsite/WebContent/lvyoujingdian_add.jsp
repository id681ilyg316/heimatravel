<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>旅游景点</title>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="jingdianjieshao"]', {
				cssPath : 'kindeditor_a5/plugins/code/prettify.css',
				uploadJson : 'kindeditor_a5/jsp/upload_json.jsp',
				fileManagerJson : 'kindeditor_a5/jsp/file_manager_json.jsp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['example'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="lvyoujingdian_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","否");
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"lvyoujingdian",ext,true,false,""); 
%>

  <body >
 <form  action="lvyoujingdian_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  添加旅游景点:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">景点编号：</td><td><input name='jingdianbianhao' type='text' id='jingdianbianhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">景点名称：</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabeljingdianmingcheng' /></td></tr>
		<tr><td  width="200">景点主图：</td><td><input name='jingdianzhutu' type='text' id='jingdianzhutu' size='50' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('jingdianzhutu')" style='border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabeljingdianzhutu' /></td></tr>
		<tr><td  width="200">所属地区：</td><td><input name='suoshudiqu' type='text' id='suoshudiqu' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">景点介绍：</td><td><textarea name="jingdianjieshao" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"></textarea></td></tr>
		<tr><td  width="200">门票价格：</td><td><input name="menpiaojiage" type="text" id="menpiaojiage" style="border:solid 1px #000000; color:#666666" onBlur="" value=""></td></tr>
		<tr><td  width="200">开放时间：</td><td><input name='kaifangshijian' type='text' id='kaifangshijian' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  />
		&nbsp;*<label id='clabelkaifangshijian' /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var jingdianmingchengobj = document.getElementById("jingdianmingcheng"); if(jingdianmingchengobj.value==""){document.getElementById("clabeljingdianmingcheng").innerHTML="&nbsp;&nbsp;<font color=red>请输入景点名称</font>";return false;}else{document.getElementById("clabeljingdianmingcheng").innerHTML="  "; } 
	var jingdianzhutuobj = document.getElementById("jingdianzhutu"); if(jingdianzhutuobj.value==""){document.getElementById("clabeljingdianzhutu").innerHTML="&nbsp;&nbsp;<font color=red>请输入景点主图</font>";return false;}else{document.getElementById("clabeljingdianzhutu").innerHTML="  "; } 
	var kaifangshijianobj = document.getElementById("kaifangshijian"); if(kaifangshijianobj.value==""){document.getElementById("clabelkaifangshijian").innerHTML="&nbsp;&nbsp;<font color=red>请输入开放时间</font>";return false;}else{document.getElementById("clabelkaifangshijian").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  


