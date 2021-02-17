$(function() {


    //初始化页面大小
    resize();

    //窗口大小变化时自动调整显示页面大小
    window.onresize = function(){
        resize();
    }


    //修改密码提交
    $(".modifyPwdBtn").click(function () {

        //alert("提交成功！")
        $("#myModal").modal('hide');
        //待写

        var CXT = $("#login_form").attr("ctx");
        // $.ajax({
        //     url : CXT + "/main/home",
        //     type : 'post',
        //     async : false,
        //     data : data,
        //     success : function(data1) {
        //         console.log(data1)
        //         alert(data1)
        //         window.location.href = CXT+ '/statics/jsp/main.jsp';
        //         if (data1.success) {
        //             // $.cookie(CES_G.COOKIE_SESSON, data.response.sessionId, {
        //             //     path : CES_G.COOKIE_SESSON_URL,
        //             //     expires : 1
        //             // });
        //
        //         } else {
        //
        //         }
        //
        //
        //     }
        // });
        // $(".submit-btn").removeAttr("disabled");

    })


    //登录按钮点击事件
    $(".submit-btn").click(function(){

        $(".submit-btn").attr("disabled",true);

        if (!$("#account").val() || !$("#password").val()) {
            alert("用户名或密码不能为空");
            return false;
        }

        //记住密码
        var COOKIE_NAME = "personal_sys";
        if ($("#keepPassword").prop('checked')) {
            alert("记住密码")
            $.cookie(COOKIE_NAME+".account", $("#account").val(), {
                path : '/',
                expires : 15
            });
        } else {
            $.cookie(COOKIE_NAME+".account", null, {
                path : '/'
            }); //删除cookie
        }

        debugger

        //提交表单
        $("#login_form").submit();

        $(".submit-btn").removeAttr("disabled");
    })



    //自动设置登录页面大小
    function resize(){
        var initHeight = $(window).height();
        $(".outDiv").css({"height":+initHeight+"px"})
        $(".container").css({"paddingTop":initHeight*0.35+"px"})

    }





});
