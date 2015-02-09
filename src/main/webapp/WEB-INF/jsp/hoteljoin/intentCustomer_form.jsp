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
<title>意向客户表单</title>
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
	<!-- 一些必填字段的默认值 -->
	<input type="hidden"  name="password"  value="test"/>
	<input type="hidden"  name="step"  value="1"/>
	<input type="hidden"  name="logo"  value="test"/>
		<table width="100%" border="0"  id="inputForm" >
				<tr>
					<th>名称</th>
					<td><input type="text" style="width:90%" name="mc"  value="维也纳东门店" /></td>
					<th>类别</th>
					<td><input type="text" style="width:90%" name="sslx"  value="酒店"  /></td>
					<th>来源</th>
					<td><input type="text" style="width:90%" name="source"  value="赛美"   /></td>
				</tr>
				<tr>
					<th>省</th>
					<td><input type="text" style="width:90%" name="sf"  value="广东"   /></td>
					<th>市</th>
					<td><input type="text" style="width:90%" name="city" value="深圳"    /></td>
					<th>区/县</th>
					<td><input type="text" style="width:90%" name="qu"  value="福田"   /></td>
				</tr>
				<tr>
					<th>地址</th>
					<td colspan="3"><input type="text" style="width:90%" name="address"  value="华强南路"   /></td>
					<th>开始日期</th>
					<td><input type="text" style="width:90%" name="clsj"  value="2015-01-01"  /></td>
				</tr>
				<tr>
					<th>属性</th>
					<td><input type="text" style="width:90%" value="连锁"   /></td>
					<th>连锁名</th>
					<td><input type="text" style="width:90%"  value="维也纳" /></td>
					<th>业务员</th>
					<td><input type="text" style="width:90%" name="fzr" value="王强"   /></td>
				</tr>
				<tr>
					<th>联系人</th>
					<td><input type="text" style="width:90%" name="zrr"  value="张三"  /></td>
					<th>手机</th>
					<td><input type="text" style="width:90%" name="mobile"  value="123123121212"  /></td>
				</tr>
				<tr>
					<td colspan="3"></td>
					<td><button type="submit" >确认</button></td>
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