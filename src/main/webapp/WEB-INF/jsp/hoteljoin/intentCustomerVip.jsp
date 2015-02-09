<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String hotelPath = basePath+"hotelcustomer/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>意向客户列表</title>
<link type="text/css" href="<%=basePath%>css/common.css" rel="stylesheet" />
<script src="<%=basePath%>js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="<%=basePath%>js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript" src="<%=basePath%>alhs/alhs.js" charset="gbk"></script>
<link href="<%=basePath%>js/My97DatePicker/skin/WdatePicker.css" rel="stylesheet" type="text/css">
<style >

	html { overflow: scroll; }

	
</style>
</head>

<body>
    
    <!--页面主体部分 start-->
    <div id="main">
    	<!--搜索栏 start-->
        <div id="search" style="height:78px">
        
        	<form action="#"  id="searchForm" >
        	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="search-table">
              <tr>
                <th width="5%">编&nbsp;&nbsp;&nbsp;&nbsp;号：</th>
                <td width="10%"><input type="text" style="width:90%" name="bh"   /></td>
                <th width="5%">属性：</th>
                <td width="10%">
                	<select style="width:90%" name="sslx">
                    	
                    </select>
                </td>
                <th width="5%">类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</th>
                <td width="10%">
                	<input type="text" style="width:90%" name="sslx" />
                </td>
                <th width="5%">业务员：</th>
                <td width="10%">
                	<select style="width:90%" name="fzr">
                    	
                    </select>
                </td>
                <th width="5%">来&nbsp;源：</th>
                <td width="10%">
                	<select style="width:90%" name="source">
                    	
                    </select>
                </td>
                <th width="5%">省：</th>
                <td width="10%">
                	<select style="width:90%" name="sf" id="sf">
                    	
                    </select>
                </td>
                <th width="4">&nbsp;</th>
                <td width="85">&nbsp;</td>
              </tr>
              <tr>
              	<th>连锁名：</th>
                <td>
                	<select style="width:90%" >
                    	
                    </select>
                </td>
                <th>名称：</th>
                <td>
                	<select style="width:90%" name="mc" >
                    	
                    </select>
                </td>
                <th>开始日期：</th>
                <td><input type="text" class="text-date"  name="clsj" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" style="width:90%" /></td>
                <th>联系人：</th>
                <td><input type="text" style="width:90%" name="zrr" />
                </td>
                <th>手机：</th>
                <td><input type="text" style="width:90%" name="mobile" /></td>
                <th>市：</th>
                <td><select id="shi"  name="city" style="width:90%">
                </select></td>
                
                <select id="qu"  style="display: none;">
                </select>
                <td>&nbsp;</td>
                <td><input type="button"  id="searchBtn" value="搜索" class="button-search button-right" /></td>
              </tr>
            </table>
            </form>
        </div>
        <!--搜索栏 end-->
        <div id="result">
        	<!--左右布局 start-->
            <table id="result_table" width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 272px;">
              <tr>
                <td width="320">
                    <!--left start-->
                    <div id="main_left">
                    	 <%-- <%@include file="intentCustomer_left.jsp"  %> --%>
                     <iframe id="left" src="<%=hotelPath %>getHotelCustomerInfoLeft.do" width="100%" height="100%" frameborder="0"></iframe> 
                    </div>
                    <!--left end-->
                </td>
                <td>
                	<!--right start-->
                    <!--选项卡-->
                    <div class="typechange tc1 tc_select">意向用户列表
                      <input type="hidden" class="leftSrc" value="<%=hotelPath %>getHotelCustomerInfoLeft.do" /> 
                        <input type="hidden" class="rightSrc" value="<%=hotelPath %>getHotelCustomerInfoRight.do" /> 
                    </div>
                    <div class="typechange tc2">无效用户列表
                    	<input type="hidden" class="leftSrc" value="<%=hotelPath %>getHotelCustomerInfoLeft.do" /> 
                        <input type="hidden" class="rightSrc" value="<%=hotelPath %>getHotelCustomerInfoRight.do" /> 
                    </div>
                    <div class="button-right" style="margin-top:7px;"><input type="button" value="添加" class="button-xinzeng button-right" /></div>
                    <div id="main_right" >
                     <%--<%@include file="_intentCustomer_right.jsp"  %> 
                          --%><iframe id="right" src="<%=hotelPath %>getHotelCustomerInfoRight.do" width="100%" height="100%" frameborder="0"></iframe>
                    </div>
                    <!--right end-->
                </td>
              </tr>
          	</table>
			<!--左右布局 end-->
        </div>
    </div>
    <!--页面主体部分 end-->
    <!--页面底部 start-->
    <div id="foot">
    	<span id="foot_company">&copy;&nbsp;深圳市赛美软件开发有限公司&nbsp;&nbsp;版权所有</span>
        <span id="foot-vresion">Vresion:1.0.1</span>
    </div>
    <!--页面底部 end-->
    
    <!-- loading--><%--
    <div id="loading" align="center" style="background-color:#ffffff;border-radius: 10px;font-size:16px;display:none;position: absolute; width: 150px; height: 60px; line-height: 60px; z-index: 1002;" >
        <img src="<%=basePath %>image/ajax-loader.gif" />&nbsp;加载中...
    </div>
    
--%></body>
<script src="<%=basePath %>js/common.js" type="text/javascript"></script>
<script src="<%=basePath %>js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</html>
<script  type="text/javascript" >
	$(function(){
		$("#searchBtn").click(function(){
			var url = "<%=hotelPath %>getHotelCustomerInfoRight.do";
			var s = $("#searchForm  ").serialize();
			url+="?"+s;
			$("#right").attr("src",url);
		});
		addressInit('sf','shi','qu','','','');
	});

</script>