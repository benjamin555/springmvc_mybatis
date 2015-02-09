<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>意向客户列表</title>
<link type="text/css" href="css/common.css" rel="stylesheet" />
<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
</head>

<body>
<!--页面头部 start-->
<iframe src="common/top.jsp" width="100%" height="157px" frameborder="0"></iframe>
<!--页面头部 end--> 
<!--页面主体部分 start-->
<div id="main"> 
  <!--搜索栏 start-->
  <div id="search" style="height:78px">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search-table">
      <tr>
        <th width="6%">编&nbsp;&nbsp;&nbsp;&nbsp;号：</th>
        <td width="10%"><input type="text" style="width:90%" /></td>
        <th width="5%">类别：</th>
        <td width="10%"><select name="select2" style="width:90%">
            <option>酒店</option>
            <option>公寓</option>
            <option>客栈民宿</option>
          </select></td>
        <th width="7%">属性：</th>
        <td width="10%"><select style="width:90%">
            <option>连锁</option>
            <option>单店</option>
          </select></td>
        <th width="5%">连锁名：</th>
        <td width="10%"><input type="text" style="width:90%" /></td>
        <th width="5%">省：</th>
        <td width="10%"><select style="width:90%">
          </select></td>
        <th width="5%">市：</th>
        <td width="10%"><select style="width:90%">
          </select></td>
        <th width="4">&nbsp;</th>
        <td width="85">&nbsp;</td>
      </tr>
      <tr>
        <th>酒店名称：</th>
        <td><input type="text" style="width:90%" /></td>
        <th>来源：</th>
        <td><select name="select" style="width:90%">
            <option>赛美网站</option>
            <option>快去住网站</option>
            <option>业务</option>
            <option>客服</option>
            <option>其他</option>
          </select></td>
        <th>开始日期：</th>
        <td><input type="text" class="text-date" onclick="WdatePicker()" style="width:90%" /></td>
        <th>联系人：</th>
        <td><input type="text" style="width:90%" /></td>
        <th>手机：</th>
        <td><input type="text" style="width:90%" /></td>
        <th>业务员：</th>
        <td><input type="text" style="width:90%" /></td>
        <td>&nbsp;</td>
        <td><input type="button" value="搜索" class="button-search button-right" /></td>
      </tr>
    </table>
  </div>
  <!--搜索栏 end-->
  <div id="result"> 
    <!--左右布局 start-->
    <table id="result_table" width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 272px;">
      <tr>
        <td width="320"><!--left start-->
          
          <div id="main_left">
            <iframe src="intentCustomer_left.html" width="100%" height="100%" frameborder="0"></iframe>
          </div>
          
          <!--left end--></td>
        <td><!--right start--> 
          <!--选项卡-->
          
          <div class="typechange tc1 tc_select">意向用户列表
            <input type="hidden" class="leftSrc" value="intentCustomer_left.html" />
            <input type="hidden" class="rightSrc" value="intentCustomer_right.html" />
          </div>
          <div class="typechange tc2">无效用户列表
            <input type="hidden" class="leftSrc" value="intentCustomer_left.html" />
            <input type="hidden" class="rightSrc" value="wuxiaoyonghu_right.html" />
          </div>
          <div class="button-right" style="margin-top:7px;">
            <input type="button" value="添加" class="button-xinzeng button-right" />
          </div>
          <div id="main_right" style="height: 232px;">
            <iframe src="intentCustomer_right.html" width="100%" height="100%" frameborder="0"></iframe>
          </div>
          
          <!--right end--></td>
      </tr>
    </table>
    <!--左右布局 end--> 
  </div>
</div>
<!--页面主体部分 end--> 
<!--页面底部 start-->
<div id="foot"> © 深圳市赛美软件开发有限公司    Copyright© 2014-2015,  All rights reserved   版权所有 </div>
<!--页面底部 end-->

</body>
<script src="js/common.js" type="text/javascript"></script>
<script src="js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</html>

