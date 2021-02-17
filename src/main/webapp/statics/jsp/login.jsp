<%--
  Created by IntelliJ IDEA.
  User: lifenglai
  Date: 2020/6/20
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
    <meta charset="utf-8"/>
    <title>个人资源管理系统</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <link rel="stylesheet" type="text/css" href="${ctx}/common/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/common/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/statics/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/statics/css/baseStyle.css">

</head>
<body class="login-bg">
<div  class="outDiv">
<%--    <h2>遮罩层DEMO</h2>--%>
    <!-- 按钮触发模态框 -->
<%--    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">--%>
<%--        打开遮罩层--%>
<%--    </button>--%>

    <!-- 模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #3CB371" >
<%--                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">--%>
<%--                        &times;--%>
<%--                    </button>--%>
                    <h4 class="modal-title text-center fs30" id="myModalLabel">
                       修改密码
                    </h4>
                </div>
                <div class="panel-body">

                    <form class="col-md-12">
                        <div class="form-group">
                            <label class="col-md-2 col-md-offset-3">用户账户</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control">
                            </div>

                        </div>
                        <div class="form-group">
                            <label class="col-md-2 col-md-offset-3">验证码</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 col-md-offset-3">新密码</label>
                            <div class="col-md-4">
                                <input type="password" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-2 col-md-offset-3">确认密码</label>
                            <div class="col-md-4">
                                <input type="password" class="form-control">
                            </div>
                        </div>


                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">返回
                    </button>
                    <button type="button" class="btn btn-primary  modifyPwdBtn">
                        确定
                    </button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>


    <div class="container">
        <div class="loginTitle">个人资源管理系统</div>
        <div class="row">
            <form id="login_form" action="main/home" ctx = ${ctx} method="post">
<%--                <form id="login_form" ctx = ${ctx}>--%>
                <div class="col-md-4 col-md-offset-4">
                    <div class="form-group">
                        <label class="col-xs-4 loginlabel">账号</label>
                        <div class="col-xs-8">
                            <input class="col-xs-8 form-control" type="text" name="account" id="account"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-4 loginlabel">密码</label>
                        <div class="col-xs-8">
                            <input class="col-xs-8 form-control" type="password" name="password" id="password"/>
                        </div>
                    </div>
                    <div class="h-20 mb15">
                        <div class="col-xs-6 text-right">
                            <input class="" id="keepPassword" name="keepPassword" type="checkbox"> 记住密码
                        </div>
                        <div class="col-xs-6 text-right">
                            <span class="pull-right forgetPwd w100 h-20" data-toggle="modal" data-target="#myModal">忘记密码</span>
                        </div>

                    </div>

                    <div class="pull-right">
<%--                        <button type="submit" class="btn btn-info mr15 submit-btn">登录</button>--%>
                        <button class="btn btn-info mr15 submit-btn">登录</button>
                    </div>
                </div>


            </form>

            <div id="footer"  class="h-50 pt50" style="clear:both;text-align:center;">
                版权所有 © 2020-2120 北京新梦想科技公司，并保留所有权利
            </div>

        </div>

    </div>

</div>


<!-- 简单的带折叠的面板-->
<%--<div class="panel-group" id="panel_group">--%>
<%--    <div class="panel panel-default">--%>
<%--        <div class="panel-heading" data-toggle="collapse" data-target="#collapse1" data-parent="#panel_group">--%>
<%--            <h4 class="panel-title">清洁套装</h4>--%>
<%--        </div>--%>
<%--        <div id="collapse1" class="panel-collapse collapse in">--%>
<%--            <div class="panel-body">--%>
<%--                aaaa--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="panel panel-default">--%>
<%--        <div class="panel-heading" data-toggle="collapse" data-target="#collapse2" data-parent="#panel_group">--%>
<%--            <h4 class="panel-title">卡壳被子</h4>--%>
<%--        </div>--%>
<%--        <div id="collapse2" class="panel-collapse collapse">--%>
<%--            <div class="panel-body">--%>
<%--                bbbbb--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


</body>
</html>

<script src="${ctx}/common/jquery/jquery3.4.1.js"></script>
<script src="${ctx}/common/jquery/jquery.cookie.js"></script>
<script src="${ctx}/common/bootstrap/js/bootstrap.min.js"></script>
<script src="${ctx}/statics/js/login.js"></script>