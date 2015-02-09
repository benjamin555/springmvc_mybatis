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
<title>头部</title>
<link type="text/css" href="css/common.css" rel="stylesheet" />
</head>
<body>
<div class="loginbar">
    <div class="left"><span>欢迎使用赛美总系统</span><span>当前用户：王静歌</span><a href="#"><img src="image/email.png" width="20" height="16" /></a><span><a href="#">注销退出</a></span></div>
    <div class="left time">上次登录时间：2015-01-12  10:30:20</div>
    <ul>
    	<li><a href="#">新手专区</a></li>
        <li><a href="#">个人中心</a></li>
        <li><a href="#">管理中心</a></li>
        <li><a href="#">帮助中心<img src="image/loginbar_more.png" width="13" height="7" /></a></li>
    </ul>
  <div class="clear"></div>
</div>
<div class="menu">
    <div class="left logo"><a href="#"><img src="image/logo.png" width="101" height="57" /></a></div>
    <ul>
    	<li><a href="#"><span></span>首页</a></li>
        <li><a href="#"><span class="jiameng"></span>酒店加盟</a>
        	<ul>
            	<li><a href="../intentCustomer.html" target="_parent">意向用户列表</a></li>
                <li><a href="../joinCustomer.html" target="_parent">加盟客户列表</a></li>
            </ul>
        </li>
        <li><a href="#"><span class="kuaiquzhu"></span>快去住订单</a></li>
        <li><a href="#"><span class="dingdan"></span>酒店订单</a></li>
        <li><a href="#"><span class="kehu"></span>客户</a></li>
        <li><a href="#"><span class="caiwu"></span>财务</a></li>
        <li><a href="#"><span class="yezhu"></span>业主</a></li>
        <li><a href="#"><span class="baobiao"></span>报表</a></li>
        <li><a href="#"><span class="shezhi"></span>设置</a>
        	<ul>
            	<li><a href="../cityLandmark.html" target="_parent">城市地标</a></li>
            </ul>
        </li>
    </ul>
    <div class="clear"></div>
</div>
<div class="access_time"></div>
</body>
</html>
