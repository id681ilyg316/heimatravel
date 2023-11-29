<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>新闻通知</title>
	<script type="text/javascript" src="js/popup.js"></script>
	<link rel="stylesheet" href="kindeditor_a5/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor_a5/plugins/code/prettify.css" />
	<script charset="g2312" src="kindeditor_a5/kindeditor.js"></script>
	<script charset="g2312" src="kindeditor_a5/lang/zh_CN.js"></script>
	<script charset="g2312" src="kindeditor_a5/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="neirong"]', {
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

  </head>

  <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"xinwentongzhi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"xinwentongzhi"); 
%>
  <body >
  <form  action="xinwentongzhi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="f1"  onsubmit="return checkform();">
  

   修改<%=mmm.get("leibie")%>:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>标题：</td><td><input name='biaoti' type='text' id='biaoti' size='50' value="<%=mmm.get("biaoti")%>" /></td></tr>
	 <tr><td>类别：</td><td><input name='leibie' type='text' id='leibie' value='<%=mmm.get("leibie")%>' /></td></tr>
	 <tr><td>内容：</td><td><textarea name="neirong" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"><%=mmm.get("neirong")%></textarea></td></tr>
	 <tr><td>添加人：</td><td><input name='tianjiaren' type='text' id='tianjiaren' value='<%=mmm.get("tianjiaren")%>' /></td></tr>
	 <tr><td>首页图片：</td><td><input name='shouyetupian' type='text' id='shouyetupian' size='50' value='<%=mmm.get("shouyetupian")%>' />&nbsp;<input type='button' value='上传' onClick="up('shouyetupian')"/></td></tr>
	 <tr><td>点击率：</td><td><input name='dianjilv' type='text' id='dianjilv' value='<%=mmm.get("dianjilv")%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


