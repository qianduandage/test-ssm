$(function() {

    resize();

    //窗口大小变化时自动调整显示页面大小
    window.onresize = function(){
        resize();
    }

    function  resize() {
        var initHeight = $(window).height();
        var middleHeight = initHeight-50;
        $("body").css({"height":+initHeight+"px"})
        var menuHeight=document.getElementById("mainMenu").scrollHeight;
        if(menuHeight>middleHeight){

            console.log(menuHeight)
            // $("#mainContent") .css({"height":+menuHeight+"px"})
        }

    }






    // $("#menu-tab").find("li").unbind().bind("click",function(){
    //     var tabId = $(this).attr("tabId");
    //     var html = '<p>现在模块为'+tabId+'</p>';
    //     $("#"+tabId).append(html);
    // })


    $(".ztree").each(function (){
        var ztreeId = $(this).attr("id");
        var zTreeObj;
        var setting = {};        // zTree 的参数配置，后面详解
        var zNodes = [           // zTree 的数据属性，此处使用标准json格式
            {
                name: "父文件1", open: true, children: [
                    { name: "子文件1-1" }, { name: "子文件1-2" }]
            },
            {
                name: "父文件2", open: true, children: [
                    { name: "子文件2-1" }, { name: "子文件2-2" }]
            }
        ];
        $(document).ready(function () {
            zTreeObj = $.fn.zTree.init($("#"+ztreeId), setting, zNodes); //初始化zTree，三个参数一次分别是容器(zTree 的容器 className 别忘了设置为 "ztree")、参数配置、数据源
        });

    })


    $("#menu-tab").find("li").each(function(){
        $(this).unbind().bind("click",function () {
            if($(this).attr("tabid")=="rm"){
                $("#mainContentHeader").text("当前页面涉及：zTree + Datatable + solr")
            }else{
                $("#mainContentHeader").text("当前页面涉及：空")
            }
        })

    })





});
