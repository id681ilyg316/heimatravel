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
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"lvyoujingdian",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"lvyoujingdian"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="lvyoujingdian_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  修改旅游景点:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>景点编号：</td><td><input name='jingdianbianhao' type='text' id='jingdianbianhao' value='<%= mmm.get("jingdianbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>景点名称：</td><td><input name='jingdianmingcheng' type='text' id='jingdianmingcheng' value='<%= mmm.get("jingdianmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>景点主图：</td><td><input name='jingdianzhutu' type='text' id='jingdianzhutu' size='50' value='<%= mmm.get("jingdianzhutu")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('jingdianzhutu')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>所属地区：</td><td><input name='suoshudiqu' type='text' id='suoshudiqu' value='<%= mmm.get("suoshudiqu")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>景点介绍：</td><td><textarea name="jingdianjieshao" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;"><%=mmm.get("jingdianjieshao")%></textarea></td></tr>
     <tr><td>门票价格：</td><td><input name="menpiaojiage" type="text" id="menpiaojiage" style="border:solid 1px #000000; color:#666666" value="<%=mmm.get("menpiaojiage")%>"></td></tr>
     <tr><td>开放时间：</td><td><input name='kaifangshijian' type='text' id='kaifangshijian' value='<%= mmm.get("kaifangshijian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


