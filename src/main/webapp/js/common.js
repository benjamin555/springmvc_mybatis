// JavaScript Document

//jquery设置main result高度
$(document).ready(function(){
	var footHight = $("#foot").height();  //获取最底部的高
	var docHight = $(window).height();	//获取浏览器可视区域的高度
	var headHight = $("#head").height();  //获取头部的高度
	var searchHight = $("#search").height();	//获取搜索部分的高度
	var stateSelectHight = $("#stateSelect").height();	//获取房间状态选择栏的高度
	$("#main").css("height", docHight - footHight - headHight - 1);
	$("#result").css("height", docHight - footHight - stateSelectHight - headHight - searchHight);
	
	//设置result_table的高度
	$("#result_table").css("height", $("#result").height());
	if($("#result_table").length > 0) $("#main_left").css("height", $("#result").height() - 4);
	if($("#result").length > 0) $("#main_right").css("height", $("#result").height() - 40);
	$(window).resize(function() { 
		docHight = $(window).height();
		$("#main").css("height", docHight - footHight - headHight - 1);
		$("#result").css("height", docHight - footHight - stateSelectHight - headHight - searchHight);
		
		//设置result_table的高度
		$("#result_table").css("height", $("#result").height());
		if($("#result_table").length > 0) $("#main_left").css("height", $("#result").height() - 4);
		if($("#result").length > 0) $("#main_right").css("height", $("#result").height() - 40);
		
		//设置对象位置居中
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
	
	//动态导航
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

	//table设置默认隔行变色
	$(".common_table3 tr").each(function(index, element) {
		if(index%2 != 0){
			$(element).css("background-color", "#e9f0fa");
		}else{
			$(element).css("background-color", "#fff");
		}
		$(element).css("cursor","pointer");
	});
	
	//table点击一行变色
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

//通用方法
var view = {
   //加载左边iframe
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
		//加载左边的Iframe
		$("#"+iframe+" iframe",window.parent.document).attr("src",src+"&guid="+id);
   },
    /*通用弹窗方法
     @method open
     @param IFrameWidth {int}     设置iFrame的宽度（必须参数）
     @param IFrameHeight {int}    设置iFrame的高度（必须参数）
     @param oneIFrameSrc {string} 设置iFrame的路径（必须参数）
     @param level {int} 设置iFrame的等级(必须参数)
     */
    open : function (iFrameWidth,iFrameHeight,iFrameSrc,level){
        //这句以前调用open方法的改过来后就去掉
        if(level == undefined || level == null || level == window.parent.document|| level == parent)level=1;
        //弹窗对象
        var floatDiv = '<div id='+'floatdiv' + level+' class="floatdiv"><div class="floatdiv_top"><h1 id='+'top-title' + level+' class="top-title"></h1><div id='+'top-close' + level+' class="top-close" onclick="view.close(this)"></div></div><iframe id='+'floatIframe' + level+' name='+'floatIframe' + level+' frameborder="0" scrolling="no" marginheight="0"></iframe></div>';
        if($("#floatdiv"+level,top.window.document).length==0)$(top.window.document.body).append(floatDiv);
        var floatDivObj = $("#floatdiv"+level,top.window.document);
        //遮罩层对象
        var fadeDiv =  '<div id="fade"></div>';
        if($("#fade",top.window.document).length==0)$(top.window.document.body).append(fadeDiv);
        var fadeDivObj = $("#fade",top.window.document);
        //loading对象
        //var loadingImg = "../login/image/ajax-loader.gif";//load图片路劲
        //var loadDiv =  "<div id=\"loading\" align=\"center\" style=\"background-color:#ffffff;border-radius: 10px;font-size:16px;display:none;position: absolute; width: 150px; height: 60px; line-height: 60px; z-index: 1002;\"><img src="+loadingImg+" onerror=\"this.src='../image/ajax-loader.gif'\" />&nbsp;加载中...</div>";
        var loadDiv =  '<div id="loading" align="center"><img src="../image/ajax-loader.gif" />&nbsp;loading...</div>';
        if($("#loading",top.window.document).length==0)$(top.window.document.body).append(loadDiv);
        var loadDivObj = $("#loading",top.window.document);
        //弹窗iframe对象
        var floatIframeObj = $("#floatIframe"+level,top.window.document);

        //遮罩层的渲染
        fadeDivObj.css("zIndex",floatDivObj.css("zIndex")-1);
        //弹窗iframe的渲染
        floatIframeObj.attr("src",iFrameSrc);
        //设置弹出窗口DIV和iframe的尺寸
        floatDivObj.css("width",iFrameWidth + "px");
        floatIframeObj.css("width",iFrameWidth + "px");
        floatIframeObj.css("height",iFrameHeight + "px");
		//floatDivObj.css("top",50*level+"px");
		floatDivObj.css("top",($(top.window.document.body).height()-floatDivObj.height())/2 - 20);
        floatDivObj.css("left",($(top.window.document.body).width()-floatDivObj.width())/2);
        //loading的渲染
        loadDivObj.css("top","200px");
        loadDivObj.css("left",($(top.window).width() - loadDivObj.width())/2);
        loadDivObj.show();
        fadeDivObj.show();

        floatIframeObj.load(function() {
			//设置弹出框内 floatdiv_main的高度  setMainHeight(floatdiv_foot的高度);
			var floatdiv_foot = floatIframeObj.contents().find(".floatdiv_foot");
			var floatdiv_main = floatIframeObj.contents().find(".floatdiv_main");
			if(floatdiv_foot.length == 0){
				//没有floatdiv_foot的情况
				floatdiv_main.css("height", floatIframeObj.height());
			}else{
				//有floatdiv_foot的情况
				floatdiv_main.css("height", floatIframeObj.height() - 39);
			}
			//设置弹出框内，main_right的高度
			var main_right = floatIframeObj.contents().find("#main_right");
			if(main_right.length > 0){
				var main_search = floatIframeObj.contents().find(".common_table6");
				var typechange = floatIframeObj.contents().find(".typechange");
				if(typechange.length > 0) main_right.css("height", floatIframeObj.height() - main_search.height() - 40);
				else main_right.css("height", floatIframeObj.height() - main_search.height());
			}
            //设置title
            $("#top-title"+level,top.window.document).text(window.top.frames["floatIframe"+level].document.title);

            loadDivObj.hide();
            floatDivObj.show();
        });
    },
   //关窗
   close : function(obj){
       $(obj).parent().parent().css("display","none");
       if($(obj).attr("id")!="top-close1")
           $("#fade",window.document).css("zIndex",$("#fade",window.document).css("zIndex")-2);
       else
           $("#fade",window.document).css("display","none");
   },
   //列表切换
   changeList : function(div){
        $(".typechange").removeClass("tc_select");
		div.addClass("tc_select");
		
		//div中的隐藏域，value为页面路劲
		var leftSrc = div.find(".leftSrc").val();
		var rightSrc = div.find(".rightSrc").val();
		if(leftSrc != "")$("#main_left iframe").attr("src", leftSrc);
		if(rightSrc != "")$("#main_right iframe").attr("src", rightSrc);
   },
   
   //提交数据后刷新列表（url附带主键）--无分页
   refesh : function(url){
        $("#floatdiv", window.parent.document).css("display","none");
        $("#main_right iframe",window.parent.document).attr("src",url);
        $("#fade", parent.window.document).css("display","none");
   },
    //提交数据后刷新列表--分页
    refeshPage : function(guid){
        $("#floatdiv", window.parent.document).css("display","none");
        var action = $("#main_right iframe",window.parent.document).contents().find("form").attr("action");
        $("#main_right iframe",window.parent.document).contents().find("form").
            attr("action",action+"&guid="+guid);
        $("#main_right iframe",window.parent.document).contents().find("form").submit();
        $("#fade", parent.window.document).css("display","none");
    },
    //二级页面刷新一级页面
    refeshFather : function(){
        view.close();
        parent.location=parent.location;
    }
};
    //取消按钮事件
    $(".button-gray").click(function(){
        view.close();
    });
    //列表切换
    $(".typechange").click(function(){
		view.changeList($(this));
	});
    //绑定事件
    $(document).on('mouseover',function(){
            //窗口拖拽
            //ie8的兼容分支，解决弹窗拖拽在IE8上二次拖拽会复位
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
        //弹出框的关闭按钮事件
        $(".top-close").click(function(){view.close()});
    });

//浏览上传
function fileValue(textfile, vl){
	vl = vl.split("\\")[vl.split("\\").length - 1];
	document.getElementById(textfile).value=vl;
}
    

