<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������</title>
<link type="text/css" href="css/common.css" rel="stylesheet" />
<script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>

</head>
 
<body>
    
    <!--ҳ�����岿�� start-->
    <div id="main">
    	<!--������ start-->
        <div id="search" style="height:78px">
        	<table width="100%" border="0" cellspacing="0" cellpadding="0" id="search-table">
              <tr>
                <th width="5%">��&nbsp;&nbsp;&nbsp;&nbsp;�ţ�</th>
                <td width="10%"><input type="text" style="width:90%" /></td>
                <th width="5%">���ԣ�</th>
                <td width="10%">
                	<select style="width:90%">
                    	
                    </select>
                </td>
                <th width="5%">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</th>
                <td width="10%">
                	<input type="text" style="width:90%" />
                </td>
                <th width="5%">ҵ��Ա��</th>
                <td width="10%">
                	<select style="width:90%">
                    	
                    </select>
                </td>
                <th width="5%">��&nbsp;Դ��</th>
                <td width="10%">
                	<select style="width:90%">
                    	
                    </select>
                </td>
                <th width="5%">ʡ��</th>
                <td width="10%">
                	<select style="width:90%">
                    	
                    </select>
                </td>
                <th width="4">&nbsp;</th>
                <td width="85">&nbsp;</td>
              </tr>
              <tr>
              	<th>��������</th>
                <td>
                	<select style="width:90%">
                    	
                    </select>
                </td>
                <th>���ƣ�</th>
                <td>
                	<select style="width:90%">
                    	
                    </select>
                </td>
                <th>��ʼ���ڣ�</th>
                <td><input type="text" class="text-date" onclick="WdatePicker()" style="width:90%" /></td>
                <th>��ϵ�ˣ�</th>
                <td><input type="text" style="width:90%" />
                </td>
                <th>�ֻ���</th>
                <td><input type="text" style="width:90%" /></td>
                <th>�У�</th>
                <td><select name="select" style="width:90%">
                </select></td>
                <td>&nbsp;</td>
                <td><input type="button" value="����" class="button-search button-right" /></td>
              </tr>
            </table>
        </div>
        <!--������ end-->
        <div id="result">
        	<!--���Ҳ��� start-->
            <table id="result_table" width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 272px;">
              <tr>
                <td width="320">
                    <!--left start-->
                    <div id="main_left">
                      <iframe src="joinCustomer_left.html" width="100%" height="100%" frameborder="0"></iframe>
                    </div>
                    <!--left end-->
                </td>
                <td>
                	<!--right start-->
                    <!--ѡ�-->
                    <div class="typechange tc1 tc_select">���˿ͻ��б�
                    	<input type="hidden" class="leftSrc" value="joinCustomer_left.html" /> 
                        <input type="hidden" class="rightSrc" value="joinCustomer_right.html" /> 
                    </div>
                    <div class="typechange tc2">��Ч���˿ͻ�
                    	<input type="hidden" class="leftSrc" value="joinCustomer_left.html" /> 
                        <input type="hidden" class="rightSrc" value="joinCustomer_right.html" /> 
                    </div>
                    <div class="button-right" style="margin-top:7px;"><input type="button" value="���" class="button-xinzeng button-right" /></div>
                    <div id="main_right" style="height: 232px;">
                          <iframe src="joinCustomer_right.html" width="100%" height="100%" frameborder="0"></iframe>
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
    
    <!-- loading-->
    <div id="loading" align="center" style="background-color:#ffffff;border-radius: 10px;font-size:16px;display:none;position: absolute; width: 150px; height: 60px; line-height: 60px; z-index: 1002;" >
        <img src="image/ajax-loader.gif" />&nbsp;������...
    </div>
    
</body>
<script src="js/common.js" type="text/javascript"></script>
<script src="js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</html>
