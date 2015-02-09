// JavaScript Document

//jquery����main result�߶�
$(document).ready(function(){
	var footHight = $("#foot").height();  //��ȡ��ײ��ĸ�
	var docHight = $(window).height();	//��ȡ�������������ĸ߶�
	var headHight = $("#head").height();  //��ȡͷ���ĸ߶�
	var searchHight = $("#search").height();	//��ȡ�������ֵĸ߶�
	var stateSelectHight = $("#stateSelect").height();	//��ȡ����״̬ѡ�����ĸ߶�
	$("#main").css("height", docHight - footHight - headHight - 1);
	$("#result").css("height", docHight - footHight - stateSelectHight - headHight - searchHight);
	
	//����result_table�ĸ߶�
	$("#result_table").css("height", $("#result").height());
	if($("#result_table").length > 0) $("#main_left").css("height", $("#result").height() - 4);
	if($("#result").length > 0) $("#main_right").css("height", $("#result").height() - 40);
	$(window).resize(function() { 
		docHight = $(window).height();
		$("#main").css("height", docHight - footHight - headHight - 1);
		$("#result").css("height", docHight - footHight - stateSelectHight - headHight - searchHight);
		
		//����result_table�ĸ߶�
		$("#result_table").css("height", $("#result").height());
		if($("#result_table").length > 0) $("#main_left").css("height", $("#result").height() - 4);
		if($("#result").length > 0) $("#main_right").css("height", $("#result").height() - 40);
		
		//���ö���λ�þ���
        $("#floatdiv1").css("top",($(window).height()-$("#floatdiv1").height())/2 - 20);
		$("#floatdiv1").css("left",($(window).width() - $("#floatdiv1").width())/2);

        $("#floatdiv2").css("top",($(window).height()-$("#floatdiv2").height())/2 - 20);
        $("#floatdiv2").css("left",($(window).width() - $("#floatdiv2").width())/2);

        $("#floatdiv3").css("top",($(window).height()-$("#floatdiv3").height())/2 - 20);
        $("#floatdiv3").css("left",($(window).width() - $("#floatdiv3").width())/2);

        $("#floatdiv4").css("top",($(window).height()-$("#floatdiv4").height())/2 - 20);
        $("#floatdiv4").css("left",($(window).width() - $("#floatdiv4").width())/2);

        $("#loading").css("top","200px");//$(".floatdiv").css("top",($(window).height() - $(".floatdiv").height())/2);
        $("#loading").css("left",($(window).width() - $("#loading").width())/2);
	});
	
	$(window).resize(function() {
		
	});
	
	//��̬����
	$(".nav-oneli").mouseenter(function(){
		$(this).find(".nav-two").show();
		
		$(".nav-two li").mouseenter(function(){
			$(this).children(".nav-three").css("left",$(this).width());
			$(this).children(".nav-three").show();
			$(this).css("z-index", 2);
			$(this).children(".nav_two_arrow").show()
		});
		
		$(".nav-two li").mouseleave(function(){
			$(this).children(".nav-three").hide();
			$(this).css("z-index", 1);
			$(this).children(".nav_two_arrow").hide()
		});
	});

	$(".nav-oneli").mouseleave(function(){
		$(this).find(".nav-two").hide();
	});

	//table����Ĭ�ϸ��б�ɫ
	$(".common_table3 tr").each(function(index, element) {
		if(index%2 != 0){
			$(element).css("background-color", "#e9f0fa");
		}else{
			$(element).css("background-color", "#fff");
		}
		$(element).css("cursor","pointer");
	});
	
	//table���һ�б�ɫ
	$(".common_table3 tr").click(function(){
		$(".common_table3 tr").each(function(index, element) {
            if($(element).hasClass("orderSelect")){
				$(element).removeClass("orderSelect");
			}
        });
		if(!$(this).hasClass("table_foot1")){
			$(this).attr("class","orderSelect");
		}
	});
	
	
	if($("#main_right").length>0){
		$(".floatdiv_main").css("overflow", "hidden");
	}
});

//ͨ�÷���
var view = {
   //�������iframe
   loadIframe : function(tr,iframe,src){
        var id = tr.children("td").find(".list_update_bt").attr("id");
		$(".common_table3 tr").each(function(index, element) {
            if($(element).hasClass("orderSelect")){
				$(element).removeClass("orderSelect");
			}
        });
		if(!tr.hasClass("table_foot1")){
			tr.attr("class","orderSelect");
		}
		//������ߵ�Iframe
		$("#"+iframe+" iframe",window.parent.document).attr("src",src+"&guid="+id);
   },
    /*ͨ�õ�������
     @method open
     @param IFrameWidth {int}     ����iFrame�Ŀ�ȣ����������
     @param IFrameHeight {int}    ����iFrame�ĸ߶ȣ����������
     @param oneIFrameSrc {string} ����iFrame��·�������������
     @param level {int} ����iFrame�ĵȼ�(�������)
     */
    open : function (iFrameWidth,iFrameHeight,iFrameSrc,level){
        //�����ǰ����open�����ĸĹ������ȥ��
        if(level == undefined || level == null || level == window.parent.document|| level == parent)level=1;
        //��������
        var floatDiv = '<div id='+'floatdiv' + level+' class="floatdiv"><div class="floatdiv_top"><h1 id='+'top-title' + level+' class="top-title"></h1><div id='+'top-close' + level+' class="top-close" onclick="view.close(this)"></div></div><iframe id='+'floatIframe' + level+' name='+'floatIframe' + level+' frameborder="0" scrolling="no" marginheight="0"></iframe></div>';
        if($("#floatdiv"+level,top.window.document).length==0)$(top.window.document.body).append(floatDiv);
        var floatDivObj = $("#floatdiv"+level,top.window.document);
        //���ֲ����
        var fadeDiv =  '<div id="fade"></div>';
        if($("#fade",top.window.document).length==0)$(top.window.document.body).append(fadeDiv);
        var fadeDivObj = $("#fade",top.window.document);
        //loading����
        //var loadingImg = "../login/image/ajax-loader.gif";//loadͼƬ·��
        //var loadDiv =  "<div id=\"loading\" align=\"center\" style=\"background-color:#ffffff;border-radius: 10px;font-size:16px;display:none;position: absolute; width: 150px; height: 60px; line-height: 60px; z-index: 1002;\"><img src="+loadingImg+" onerror=\"this.src='../image/ajax-loader.gif'\" />&nbsp;������...</div>";
        var loadDiv =  '<div id="loading" align="center"><img src="../image/ajax-loader.gif" />&nbsp;loading...</div>';
        if($("#loading",top.window.document).length==0)$(top.window.document.body).append(loadDiv);
        var loadDivObj = $("#loading",top.window.document);
        //����iframe����
        var floatIframeObj = $("#floatIframe"+level,top.window.document);

        //���ֲ����Ⱦ
        fadeDivObj.css("zIndex",floatDivObj.css("zIndex")-1);
        //����iframe����Ⱦ
        floatIframeObj.attr("src",iFrameSrc);
        //���õ�������DIV��iframe�ĳߴ�
        floatDivObj.css("width",iFrameWidth + "px");
        floatIframeObj.css("width",iFrameWidth + "px");
        floatIframeObj.css("height",iFrameHeight + "px");
		//floatDivObj.css("top",50*level+"px");
		floatDivObj.css("top",($(top.window.document.body).height()-floatDivObj.height())/2 - 20);
        floatDivObj.css("left",($(top.window.document.body).width()-floatDivObj.width())/2);
        //loading����Ⱦ
        loadDivObj.css("top","200px");
        loadDivObj.css("left",($(top.window).width() - loadDivObj.width())/2);
        loadDivObj.show();
        fadeDivObj.show();

        floatIframeObj.load(function() {
			//���õ������� floatdiv_main�ĸ߶�  setMainHeight(floatdiv_foot�ĸ߶�);
			var floatdiv_foot = floatIframeObj.contents().find(".floatdiv_foot");
			var floatdiv_main = floatIframeObj.contents().find(".floatdiv_main");
			if(floatdiv_foot.length == 0){
				//û��floatdiv_foot�����
				floatdiv_main.css("height", floatIframeObj.height());
			}else{
				//��floatdiv_foot�����
				floatdiv_main.css("height", floatIframeObj.height() - 39);
			}
			//���õ������ڣ�main_right�ĸ߶�
			var main_right = floatIframeObj.contents().find("#main_right");
			if(main_right.length > 0){
				var main_search = floatIframeObj.contents().find(".common_table6");
				var typechange = floatIframeObj.contents().find(".typechange");
				if(typechange.length > 0) main_right.css("height", floatIframeObj.height() - main_search.height() - 40);
				else main_right.css("height", floatIframeObj.height() - main_search.height());
			}
            //����title
            $("#top-title"+level,top.window.document).text(window.top.frames["floatIframe"+level].document.title);

            loadDivObj.hide();
            floatDivObj.show();
        });
    },
   //�ش�
   close : function(obj){
       $(obj).parent().parent().css("display","none");
       if($(obj).attr("id")!="top-close1")
           $("#fade",window.document).css("zIndex",$("#fade",window.document).css("zIndex")-2);
       else
           $("#fade",window.document).css("display","none");
   },
   //�б��л�
   changeList : function(div){
        $(".typechange").removeClass("tc_select");
		div.addClass("tc_select");
		
		//div�е�������valueΪҳ��·��
		var leftSrc = div.find(".leftSrc").val();
		var rightSrc = div.find(".rightSrc").val();
		if(leftSrc != "")$("#main_left iframe").attr("src", leftSrc);
		if(rightSrc != "")$("#main_right iframe").attr("src", rightSrc);
   },
   
   //�ύ���ݺ�ˢ���б�url����������--�޷�ҳ
   refesh : function(url){
        $("#floatdiv", window.parent.document).css("display","none");
        $("#main_right iframe",window.parent.document).attr("src",url);
        $("#fade", parent.window.document).css("display","none");
   },
    //�ύ���ݺ�ˢ���б�--��ҳ
    refeshPage : function(guid){
        $("#floatdiv", window.parent.document).css("display","none");
        var action = $("#main_right iframe",window.parent.document).contents().find("form").attr("action");
        $("#main_right iframe",window.parent.document).contents().find("form").
            attr("action",action+"&guid="+guid);
        $("#main_right iframe",window.parent.document).contents().find("form").submit();
        $("#fade", parent.window.document).css("display","none");
    },
    //����ҳ��ˢ��һ��ҳ��
    refeshFather : function(){
        view.close();
        parent.location=parent.location;
    }
};
    //ȡ����ť�¼�
    $(".button-gray").click(function(){
        view.close();
    });
    //�б��л�
    $(".typechange").click(function(){
		view.changeList($(this));
	});
    //���¼�
    $(document).on('mouseover',function(){
            //������ק
            //ie8�ļ��ݷ�֧�����������ק��IE8�϶�����ק�Ḵλ
            if(navigator.userAgent.indexOf("MSIE")>0&&navigator.userAgent.indexOf("MSIE 8.0")>0){
                if($("#floatdiv1").length!=0){
                    $("#floatdiv1").draggable({
                        //opacity: 0.5,
                        iframeFix:false,
                        containment:'window'
                    });
                }
                if($("#floatdiv2").length!=0){
                    $("#floatdiv2").draggable({
                        //opacity: 0.5,
                        iframeFix:false,
                        containment:'window'
                    });
                }
                if($("#floatdiv3").length!=0){
                    $("#floatdiv3").draggable({
                        //opacity: 0.5,
                        iframeFix:false,
                        containment:'window'
                    });
                }
            }else{
                if($("#floatdiv1").length!=0){
                    $("#floatdiv1").draggable({
                        //opacity: 0.5,
                        iframeFix:true,
                        containment:'window'
                    });
                }
                if($("#floatdiv2").length!=0){
                    $("#floatdiv2").draggable({
                        //opacity: 0.5,
                        iframeFix:true,
                        containment:'window'
                    });
                }
                if($("#floatdiv3").length!=0){
                    $("#floatdiv3").draggable({
                        //opacity: 0.5,
                        iframeFix:true,
                        containment:'window'
                    });
                }
            }
        //������Ĺرհ�ť�¼�
        $(".top-close").click(function(){view.close()});
    });

//����ϴ�
function fileValue(textfile, vl){
	vl = vl.split("\\")[vl.split("\\").length - 1];
	document.getElementById(textfile).value=vl;
}
    

