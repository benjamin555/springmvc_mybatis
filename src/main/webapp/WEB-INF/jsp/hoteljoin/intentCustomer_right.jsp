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
<title>无标题文档</title>
<link type="text/css" href="<%=basePath%>css/common.css"
	rel="stylesheet" />
<script src="<%=basePath%>js/jquery-1.11.1.min.js"
	type="text/javascript"></script>
<style>
body,html {
	min-width: 0px;
}
</style>
</head>
<body>
	<div class="table_nav" style="width: ">
		<div>
			<table class="common_table3" width="99%" border="0" cellspacing="1"
				cellpadding="1" bgcolor="#a2adbf">
				<tr>
					<th width="2%" scope="col">&nbsp;</th>
					<th width="4%" scope="col">序号</th>
					<th width="8%" scope="col">编号</th>
					<th width="5%" scope="col">类别</th>
					<th width="5%" scope="col">属性</th>
					<th width="6%" scope="col">连锁名</th>
					<th width="15%" scope="col">名称</th>
					<th width="12%" scope="col">联系日期</th>
					<th width="5%" scope="col">天数</th>
					<th width="9%" scope="col">跟进情况</th>
					<th width="6%" scope="col">来源</th>
					<th width="9%" scope="col">业务员</th>
					<th width="6%" scope="col">省</th>
					<th width="7%" scope="col">市</th>
				</tr>
			</table>
		</div>
	</div>
	<table id="list" class="common_table3" width="99%" border="0"
		cellspacing="1" cellpadding="1" bgcolor="#a2adbf">
		<c:forEach items="${hotelList}" var="item">
			<tr class="contentTr">
				<td width="2%"><input type="checkbox" name="checkbox" 
					value="${ item.guid}" />
				</td>
				<td width="4%">${ item.bh}</td>
				<td width="8%">${ item.bh}</td>
				<td width="5%">${ item.sslx}</td>
				<td width="5%">${ item.sslx}</td>
				<td width="6%">${ item.mc}</td>
				<td width="15%">${ item.mc}</td>
				<td width="12%">${ item.clsj}</td>
				<td width="5%">${ item.sslx}</td>
				<td width="9%">${ item.sslx}</td>
				<td width="6%">${ item.source}</td>
				<td width="9%">${ item.fzr}</td>
				<td width="6%">${ item.sf}</td>
				<td width="7%">${ item.city}</td>
			</tr>
		</c:forEach>
		<tr class="table_foot1">
			<td colspan="14" style="text-align:right"><input type="button"
				class="button-blue button-left" id="joinButton"  value="确定加盟" />
				<div class="result_foot pageBar" >
					<span>当前&nbsp;${page.pageNo }&nbsp;/&nbsp;${page.totalPages
						}&nbsp;页</span> 
					<c:if test="${page.hasPre}">
						<span><a
							href="<%=hotelPath %>getHotelJoinInfoRight.do?page.start=0&page.size=${page.pageSize}">首页</a>
						</span>
						<span><a
							href="<%=hotelPath %>getHotelJoinInfoRight.do?page.start=${page.preFirst}&page.size=${page.pageSize}">上一页</a>
						</span>
					</c:if>
					<c:if test="${page.hasNext}">
						<span><a
							href="<%=hotelPath %>getHotelJoinInfoRight.do?page.start=${page.nextFirst}&page.size=${page.pageSize}">下一页</a>
						</span>
						<span><a
							href="<%=hotelPath %>getHotelJoinInfoRight.do?page.start=${page.lastFirst }&page.size=${page.pageSize}"">末页</a>
						</span>
					</c:if>
					<span>跳至<input type="text" class="page_index" name="page.pageNo"  id="pageNo"/>页</span>
				</div></td>
		</tr>
	</table>
	
	<!-- 查询的隐藏form用于保存查询条件 -->
	<div style="display:none;" >
	     <form action="<%=hotelPath %>getHotelJoinInfoRight.do"  id="rightSearchForm" method="post">
			<input type="hidden"  name="bh" value="${param.bh}" />	     
			<input type="hidden"  name="sf"  value="${param.sf}" />	    
			<input type="hidden"  name="sslx" value="${param.sslx}" />	     
			<input type="hidden"  name="fzr"  value="${param.fzr}" />	    
			<input type="hidden"  name="source" value="${param.source}" />	     
			<input type="hidden"  name="mc"  value="${param.mc}" />	
			<input type="hidden"  name="clsj"  value="${param.clsj}" />	    
			<input type="hidden"  name="zrr" value="${param.zrr}" />	     
			<input type="hidden"  name="mobile"  value="${param.mobile}" />	     
			<input type="hidden"  name="city"  value="${param.city}" />	  
	     </form>
	</div>
	
</body>
<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
<script type="text/javascript">
	$(function(){
		 $("#list tr.contentTr").click(function(){
			 var tr = $(this);
			 var cbk =tr.children("td").children(":checkbox");
				 var id =cbk.val();
				 var parent = $("#left",window.parent.document);
				 var url = "<%=hotelPath %>getHotelJoinInfoLeft.do";
				 url+="?guid=";
				 url+=id;
				parent.attr("src",url);
				 
		 });
		 
		 $("#joinButton").click(function(){
		
		 var checkboxList = $("#list :checkbox:checked");
		 var checkValArr=new Array();
			   checkboxList.each(function(){
 			   checkValArr.push($(this).val());
 			   });
		 if(checkboxList.length<=0)
		 {
		  alert("请选择酒店！");
		 }
			else {
			
			if(confirm("确实加盟吗?")){
						$.ajax({
			  			url:"<%=hotelPath %>updatestatus.do", 
			  			type: "POST",
			  			dataType:"json",
			  			data:{checkValArr:checkValArr},
			  			success:function(data){
			  			if(data=="succ")
			  			{
 						/* 	var ckbs=$("input[name=checkbox]:checked");
 							           ckbs.each(function(){
             								// $(this).parent().parent().remove();
           												});
           												 */
           		 					/**
									返回第一页
									**/
									    var url = "<%=hotelPath %>getHotelJoinInfoRight.do?page.size=${page.pageSize}";
					    	  			 url+="&page.pageNo="+"1";
					    	   			 window.location=url;	
					    	   		/**
									清空左边页
									**/
										 var id = $("#list").children().children()[0];
										 var parent = $("#left",window.parent.document);
										 var url = "<%=hotelPath %>getHotelJoinInfoLeft.do";
										 url+="?guid=";
										 url+=id;
										 parent.attr("src",url);		
			  			            }
						  				}
						  				
									});
				    	  
				    	
					 
					}
					else{
					 return;
					} 
							}
		 		 });
        
				 
		  
		// 绑定键盘按下事件  
		   $(document).keypress(function(e) {  
		    // 回车键事件  
		       if(e.which == 13) {  
		    	  var pageNo = $("#pageNo").val();
		    	  var url = "<%=hotelPath %>getHotelJoinInfoRight.do?page.size=${page.pageSize}";
		    	  url+="&page.pageNo="+pageNo
		    	   window.location=url;
		         }  
		   }); 
		
		
		//绑定分页事件
		$(".pageBar a").click(function(){
			var url = $(this).attr("href");
			$("#rightSearchForm").attr("action",url);
			$("#rightSearchForm").submit();
			
			return false;
		});
		

		
	});

</script>
</html>