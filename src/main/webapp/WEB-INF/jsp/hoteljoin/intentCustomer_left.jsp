<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html" charset="gb2312" />
<title>无标题文档</title>
<link type="text/css" href="css/common.css" rel="stylesheet" />
<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
<style>
html, body{
	min-width:0px;
}
</style>
</head>

<body>
	<table class="common_table1" width="98%" border="0" cellspacing="1" cellpadding="1" bgcolor="#c6c6c6">
      <tr class="vip_title1">
          <td colspan="4">意向客户信息</td>
      </tr>
      <tr>
          <th width="30%" scope="row">编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</th>
          <td colspan="3">${ item.bh}</td>
      </tr>
      <tr>
        <th scope="row">名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</th>
        <td colspan="3">${ item.mc}</td>
      </tr>
      <tr>
        <th scope="row">类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型</th>
        <td>${ item.sslx}</td>
        <th scope="row">属&nbsp;&nbsp;&nbsp;性</th>
        <td>${ item.sslx}</td>
      </tr>
      <tr>
        <th scope="row">连&nbsp;锁&nbsp;&nbsp;名</th>
        <td>${ item.mc}</td>
        <th scope="row">来&nbsp;&nbsp;&nbsp;源</th>
        <td>${ item.source}</td>
      </tr>
      <tr>
        <th scope="row">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机</th>
        <td>${item.mobile} </td>
        <th scope="row">联系人</th>
        <td>${item.fzr }</td>
      </tr>
      <tr>
        <th scope="row">开始日期</th>
        <td>${item.clsj }</td>
        <th scope="row">天&nbsp;&nbsp;&nbsp;数</th>
        <td></td>
      </tr>
      <tr>
        <th scope="row">省</th>
        <td>${item.sf}</td>
        <th scope="row">市</th>
        <td>${item.city}</td>
      </tr>
      <tr>
        <th scope="row">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址</th>
        <td colspan="3">${item.address}</td>
      </tr>
      <tr>
        <th scope="row">业&nbsp;务&nbsp;&nbsp;员</th>
        <td>&nbsp;</td>
        <th scope="row">跟&nbsp;&nbsp;&nbsp;进</th>
        <td>&nbsp;</td>
      </tr>
    </table>
    <table class="common_table1" width="98%" border="0" cellspacing="1" cellpadding="1" bgcolor="#c6c6c6">
      <tr class="vip_title1">
          <td colspan="2">信息总汇</td>
      </tr>
      <tr>
        <th scope="row">全部总数</th>
        <td>3652</td>
      </tr>
      <tr>
        <th scope="row">酒店总数</th>
        <td>352</td>
      </tr>
      <tr>
        <th scope="row">公寓总数</th>
        <td>65</td>
      </tr>
      <tr>
        <th scope="row">客栈总数</th>
        <td>25</td>
      </tr>
      <tr>
        <th scope="row">省&nbsp;总&nbsp;&nbsp;数</th>
        <td>20</td>
      </tr>
      <tr>
        <th scope="row">市&nbsp;总&nbsp;&nbsp;数</th>
        <td>66</td>
      </tr>
      <tr>
        <th scope="row">连&nbsp;锁&nbsp;&nbsp;店</th>
        <td>652</td>
      </tr>
      <tr>
        <th width="30%" scope="row">单&nbsp;体&nbsp;&nbsp;店</th>
        <td>36</td>
      </tr>
    </table>
</body>
<script type="text/javascript" src="js/common.js"></script>
</html>
