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
<title>�ޱ����ĵ�</title>
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
					<th width="4%" scope="col">���</th>
					<th width="8%" scope="col">���</th>
					<th width="5%" scope="col">���</th>
					<th width="5%" scope="col">����</th>
					<th width="6%" scope="col">������</th>
					<th width="15%" scope="col">����</th>
					<th width="12%" scope="col">��ϵ����</th>
					<th width="5%" scope="col">����</th>
					<th width="9%" scope="col">�������</th>
					<th width="6%" scope="col">��Դ</th>
					<th width="9%" scope="col">ҵ��Ա</th>
					<th width="6%" scope="col">ʡ</th>
					<th width="7%" scope="col">��</th>
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
				class="button-blue button-left" id="joinButton"  value="ȷ������" />
				<div class="result_foot pageBar" >
					<span>��ǰ&nbsp;${page.pageNo }&nbsp;/&nbsp;${page.totalPages
						}&nbsp;ҳ</span> 
					<c:if test="${page.hasPre}">
						<span><a
							href="<%=hotelPath %>getHotelJoinInfoRight.do?page.start=0&page.size=${page.pageSize}">��ҳ</a>
						</span>
						<span><a
							href="<%=hotelPath %>getHotelJoinInfoRight.do?page.start=${page.preFirst}&page.size=${page.pageSize}">��һҳ</a>
						</span>
					</c:if>
					<c:if test="${page.hasNext}">
						<span><a
							href="<%=hotelPath %>getHotelJoinInfoRight.do?page.start=${page.nextFirst}&page.size=${page.pageSize}">��һҳ</a>
						</span>
						<span><a
							href="<%=hotelPath %>getHotelJoinInfoRight.do?page.start=${page.lastFirst }&page.size=${page.pageSize}"">ĩҳ</a>
						</span>
					</c:if>
					<span>����<input type="text" class="page_index" name="page.pageNo"  id="pageNo"/>ҳ</span>
				</div></td>
		</tr>
	</table>
	
	<!-- ��ѯ������form���ڱ����ѯ���� -->
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
		  alert("��ѡ��Ƶ꣡");
		 }
			else {
			
			if(confirm("ȷʵ������?")){
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
									���ص�һҳ
									**/
									    var url = "<%=hotelPath %>getHotelJoinInfoRight.do?page.size=${page.pageSize}";
					    	  			 url+="&page.pageNo="+"1";
					    	   			 window.location=url;	
					    	   		/**
									������ҳ
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
        
				 
		  
		// �󶨼��̰����¼�  
		   $(document).keypress(function(e) {  
		    // �س����¼�  
		       if(e.which == 13) {  
		    	  var pageNo = $("#pageNo").val();
		    	  var url = "<%=hotelPath %>getHotelJoinInfoRight.do?page.size=${page.pageSize}";
		    	  url+="&page.pageNo="+pageNo
		    	   window.location=url;
		         }  
		   }); 
		
		
		//�󶨷�ҳ�¼�
		$(".pageBar a").click(function(){
			var url = $(this).attr("href");
			$("#rightSearchForm").attr("action",url);
			$("#rightSearchForm").submit();
			
			return false;
		});
		

		
	});

</script>
</html>