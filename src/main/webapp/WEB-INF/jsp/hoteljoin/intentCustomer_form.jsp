<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String hotelPath = basePath+"hoteljoin/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����ͻ���</title>
<link type="text/css" href="<%=basePath%>css/common.css"
	rel="stylesheet" />
<script src="<%=basePath%>js/jquery-1.11.1.min.js"
	type="text/javascript"></script>
<style>
body,html {
	min-width: 0px;
}

form tr {
 margin-bottom: 5px;
}

form tr button{
 margin-right: 10px;
}
</style>
</head>
<body>

	<form action="<c:url  value="/hoteljoin/save.do" />" method="post">
	<!-- һЩ�����ֶε�Ĭ��ֵ -->
	<input type="hidden"  name="password"  value="test"/>
	<input type="hidden"  name="step"  value="1"/>
	<input type="hidden"  name="logo"  value="test"/>
		<table width="100%" border="0"  id="inputForm" >
				<tr>
					<th>����</th>
					<td><input type="text" style="width:90%" name="mc"  value="άҲ�ɶ��ŵ�" /></td>
					<th>���</th>
					<td><input type="text" style="width:90%" name="sslx"  value="�Ƶ�"  /></td>
					<th>��Դ</th>
					<td><input type="text" style="width:90%" name="source"  value="����"   /></td>
				</tr>
				<tr>
					<th>ʡ</th>
					<td><input type="text" style="width:90%" name="sf"  value="�㶫"   /></td>
					<th>��</th>
					<td><input type="text" style="width:90%" name="city" value="����"    /></td>
					<th>��/��</th>
					<td><input type="text" style="width:90%" name="qu"  value="����"   /></td>
				</tr>
				<tr>
					<th>��ַ</th>
					<td colspan="3"><input type="text" style="width:90%" name="address"  value="��ǿ��·"   /></td>
					<th>��ʼ����</th>
					<td><input type="text" style="width:90%" name="clsj"  value="2015-01-01"  /></td>
				</tr>
				<tr>
					<th>����</th>
					<td><input type="text" style="width:90%" value="����"   /></td>
					<th>������</th>
					<td><input type="text" style="width:90%"  value="άҲ��" /></td>
					<th>ҵ��Ա</th>
					<td><input type="text" style="width:90%" name="fzr" value="��ǿ"   /></td>
				</tr>
				<tr>
					<th>��ϵ��</th>
					<td><input type="text" style="width:90%" name="zrr"  value="����"  /></td>
					<th>�ֻ�</th>
					<td><input type="text" style="width:90%" name="mobile"  value="123123121212"  /></td>
				</tr>
				<tr>
					<td colspan="3"></td>
					<td><button type="submit" >ȷ��</button></td>
				</tr>
            </table>
	
	</form>
	
</body>
<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
<script type="text/javascript">
	$(function(){
		

		
	});

</script>
</html>