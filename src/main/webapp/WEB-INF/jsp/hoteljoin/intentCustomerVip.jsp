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
<title>����ͻ��б�</title>
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
    
    <!--ҳ�����岿�� start-->
    <div id="main">
    	<!--������ start-->
        <div id="search" style="height:78px">
        
        	<form action="#"  id="searchForm" >
        	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="search-table">
              <tr>
                <th width="5%">��&nbsp;&nbsp;&nbsp;&nbsp;�ţ�</th>
                <td width="10%"><input type="text" style="width:90%" name="bh"   /></td>
                <th width="5%">���ԣ�</th>
                <td width="10%">
                	<select style="width:90%" name="sslx">
                    	
                    </select>
                </td>
                <th width="5%">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</th>
                <td width="10%">
                	<input type="text" style="width:90%" name="sslx" />
                </td>
                <th width="5%">ҵ��Ա��</th>
                <td width="10%">
                	<select style="width:90%" name="fzr">
                    	
                    </select>
                </td>
                <th width="5%">��&nbsp;Դ��</th>
                <td width="10%">
                	<select style="width:90%" name="source">
                    	
                    </select>
                </td>
                <th width="5%">ʡ��</th>
                <td width="10%">
                	<select style="width:90%" name="sf" id="sf">
                    	
                    </select>
                </td>
                <th width="4">&nbsp;</th>
                <td width="85">&nbsp;</td>
              </tr>
              <tr>
              	<th>��������</th>
                <td>
                	<select style="width:90%" >
                    	
                    </select>
                </td>
                <th>���ƣ�</th>
                <td>
                	<select style="width:90%" name="mc" >
                    	
                    </select>
                </td>
                <th>��ʼ���ڣ�</th>
                <td><input type="text" class="text-date"  name="clsj" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" style="width:90%" /></td>
                <th>��ϵ�ˣ�</th>
                <td><input type="text" style="width:90%" name="zrr" />
                </td>
                <th>�ֻ���</th>
                <td><input type="text" style="width:90%" name="mobile" /></td>
                <th>�У�</th>
                <td><select id="shi"  name="city" style="width:90%">
                </select></td>
                
                <select id="qu"  style="display: none;">
                </select>
                <td>&nbsp;</td>
                <td><input type="button"  id="searchBtn" value="����" class="button-search button-right" /></td>
              </tr>
            </table>
            </form>
        </div>
        <!--������ end-->
        <div id="result">
        	<!--���Ҳ��� start-->
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
                    <!--ѡ�-->
                    <div class="typechange tc1 tc_select">�����û��б�
                      <input type="hidden" class="leftSrc" value="<%=hotelPath %>getHotelCustomerInfoLeft.do" /> 
                        <input type="hidden" class="rightSrc" value="<%=hotelPath %>getHotelCustomerInfoRight.do" /> 
                    </div>
                    <div class="typechange tc2">��Ч�û��б�
                    	<input type="hidden" class="leftSrc" value="<%=hotelPath %>getHotelCustomerInfoLeft.do" /> 
                        <input type="hidden" class="rightSrc" value="<%=hotelPath %>getHotelCustomerInfoRight.do" /> 
                    </div>
                    <div class="button-right" style="margin-top:7px;"><input type="button" value="���" class="button-xinzeng button-right" /></div>
                    <div id="main_right" >
                     <%--<%@include file="_intentCustomer_right.jsp"  %> 
                          --%><iframe id="right" src="<%=hotelPath %>getHotelCustomerInfoRight.do" width="100%" height="100%" frameborder="0"></iframe>
                    </div>
                    <!--right end-->
                </td>
              </tr>
          	</table>
			<!--���Ҳ��� end-->
        </div>
    </div>
    <!--ҳ�����岿�� end-->
    <!--ҳ��ײ� start-->
    <div id="foot">
    	<span id="foot_company">&copy;&nbsp;��������������������޹�˾&nbsp;&nbsp;��Ȩ����</span>
        <span id="foot-vresion">Vresion:1.0.1</span>
    </div>
    <!--ҳ��ײ� end-->
    
    <!-- loading--><%--
    <div id="loading" align="center" style="background-color:#ffffff;border-radius: 10px;font-size:16px;display:none;position: absolute; width: 150px; height: 60px; line-height: 60px; z-index: 1002;" >
        <img src="<%=basePath %>image/ajax-loader.gif" />&nbsp;������...
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