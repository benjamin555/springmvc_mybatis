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
<title>�ޱ����ĵ�</title>
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
          <td colspan="4">���˿ͻ���Ϣ</td>
      </tr>
      <tr>
          <th width="30%" scope="row">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</th>
          <td colspan="3">${ item.bh}<a href="#" class=" button-right">����</a></td>
          
      </tr>
      <tr>
        <th scope="row">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</th>
        <td colspan="3">${ item.mc}</td>
      </tr>
      <tr>
        <th scope="row">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</th>
        <td>${ item.sslx}</td>
        <th scope="row">��&nbsp;&nbsp;&nbsp;��</th>
        <td>${ item.sslx}</td>
      </tr>
      <tr>
        <th scope="row">��&nbsp;��&nbsp;&nbsp;��</th>
        <td>${ item.mc}</td>
        <th scope="row">��&nbsp;&nbsp;&nbsp;Դ</th>
        <td>${ item.source}</td>
      </tr>
      <tr>
        <th scope="row">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</th>
        <td>${item.mobile} </td>
        <th scope="row">��ϵ��</th>
        <td>${item.fzr }</td>
      </tr>
      <tr>
        <th scope="row">��ʼ����</th>
        <td>${item.clsj }</td>
        <th scope="row">��&nbsp;&nbsp;&nbsp;��</th>
        <td></td>
      </tr>
      <tr>
        <th scope="row">ʡ</th>
        <td>${item.sf}</td>
        <th scope="row">��</th>
        <td>${item.city}</td>
      </tr>
      <tr>
        <th scope="row">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ַ</th>
        <td colspan="3">${item.address}</td>
      </tr>
      <tr>
        <th scope="row">ҵ&nbsp;��&nbsp;&nbsp;Ա</th>
        <td>&nbsp;</td>
        <th scope="row">��&nbsp;&nbsp;&nbsp;��</th>
        <td>&nbsp;</td>
      </tr>
    </table>
    <table class="common_table1" width="98%" border="0" cellspacing="1" cellpadding="1" bgcolor="#c6c6c6">
      <tr class="vip_title1">
          <td colspan="2">��Ϣ�ܻ�</td>
      </tr>
      <tr>
        <th scope="row">ȫ������</th>
        <td>3652</td>
      </tr>
      <tr>
        <th scope="row">�Ƶ�����</th>
        <td>352</td>
      </tr>
      <tr>
        <th scope="row">��Ԣ����</th>
        <td>65</td>
      </tr>
      <tr>
        <th scope="row">��ջ����</th>
        <td>25</td>
      </tr>
      <tr>
        <th scope="row">ʡ&nbsp;��&nbsp;&nbsp;��</th>
        <td>20</td>
      </tr>
      <tr>
        <th scope="row">��&nbsp;��&nbsp;&nbsp;��</th>
        <td>66</td>
      </tr>
      <tr>
        <th scope="row">��&nbsp;��&nbsp;&nbsp;��</th>
        <td>652</td>
      </tr>
      <tr>
        <th width="30%" scope="row">��&nbsp;��&nbsp;&nbsp;��</th>
        <td>36</td>
      </tr>
    </table>
</body>
<script type="text/javascript" src="js/common.js"></script>
</html>
