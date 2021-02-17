<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>个人资源管理系统</title>

    <link rel="stylesheet" type="text/css" href="${ctx}/common/ztree/css/zTreeStyle.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/common/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/common/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/statics/css/style.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/statics/css/baseStyle.css">




</head>
<body class="">

    <div class="h-50">
        <div class="navbar navbar-fixed-top">
            <div class="container-fluid pl20">
                <div class="navbar-header">
                    <a class="navbar-brand fs26 pl-flex lh50" href="#"><span class="logo-img mr30" src="../statics/images/logo.jpg"></span>个人资源管理系统</a>
                </div>
<%--                <div>--%>
<%--                    <form class="form-inline">--%>
<%--                        <div class="input-group">--%>
<%--                            <span class="input-group-addon">@</span>--%>
<%--                            <input list="dl" type="text" class="form-control" placeholder="Search"/>--%>
<%--                            <datalist id="dl">--%>
<%--                                <option value="IE"></option>--%>
<%--                                <option value="Firefox"></option>--%>
<%--                                <option value="chrome"></option>--%>
<%--                                <option value="safari"></option>--%>
<%--                            </datalist>--%>
<%--                        </div>--%>

<%--                        <button class="btn btn-success" type="submit">search</button>--%>
<%--                    </form>--%>
<%--                </div>--%>

                <div>
                    <ul class="nav navbar-nav pull-right">
<%--                        <li class="active"><a href="#">iOS</a></li>--%>
<%--                        <li><a href="#">SVN</a></li>--%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                admin
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu w85" style="min-width:85px">
                                <li><a href="#">个人信息</a></li>
                                <li><a href="#">修改密码</a></li>
                                <li class="divider"></li>
                                <li><a href="#">退出登录</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="outBody">
        <div id="mainMenu">
            <ul id="menu-tab" class="nav nav-pills nav-stacked">
                <li class="active" tabId = "yh"><a href="#yh" data-toggle="tab">
                    用户管理
                </a></li>
                <li tabId = "rm"><a href="#rm" data-toggle="tab">人脉管理</a></li>
                <li tabId = "jj"><a href="#jj" data-toggle="tab">经济管理</a></li>
                <li tabId = "zc"><a href="#zc" data-toggle="tab">资产管理</a></li>
                <li tabId = "zl"><a href="#zl" data-toggle="tab">资料管理</a></li>
                <li tabId = "rj"><a href="#rj" data-toggle="tab">软件管理</a></li>
                <li tabId = "xt"><a href="#xt" data-toggle="tab">系统管理</a></li>
            </ul>

        </div>
        <div id="mainContent" class="">

            <div id="mainContentHeader" class="h-25 text-center">主页面头部</div>
            <div id = "mainContentbodyFooter" >
                <div id="mainContentbody" class="tab-content text-center list-group list-group-links">
                    <div class="tab-pane fade in active" id="yh" style="height: 100%;">
                        <jsp:include page="childContent/yh.jsp"/>
                    </div>
                    <div class="tab-pane fade" id="rm"  style="height: 100%;">
                        <jsp:include page="childContent/rm.jsp"/>
                    </div>
                    <div class="tab-pane fade" id="jj"  style="height: 100%;">
                        <jsp:include page="childContent/jj.jsp"/>
                    </div>
                    <div class="tab-pane fade" id="zc"  style="height: 100%;">
                        <jsp:include page="childContent/zc.jsp"/>
                    </div>
                    <div class="tab-pane fade" id="zl"  style="height: 100%;">
                        <jsp:include page="childContent/zl.jsp"/>
                    </div>
                    <div class="tab-pane fade" id="rj"  style="height: 100%;">
                        <jsp:include page="childContent/rj.jsp"/>
                    </div>
                    <div class="tab-pane fade" id="xt"  style="height: 100%;">
                        <jsp:include page="childContent/xt.jsp"/>
                    </div>
                    <h1>上传文件</h1>
                    <form method="post" action="/ssm/user/doUpload" enctype="multipart/form-data">
                        <input type="file" name="file"/>
                        <input type="submit" value="上传文件"/>

                    </form>
                </div>
                <div id="mainContentFooter" class="h-25 text-center">主页面尾部</div>
            </div>

        </div>


    </div>


<%--    <div id="content" style="background-color:#EEEEEE;">--%>
<%--            内容在这里--%>
<%--    </div>--%>
   <%-- <script>
        function test(){
            alert('跨域访问百度')
        }


    </script>


    <iframe id = "iframe" src="http://baidu.com" onload = "test()" width="1000px" height="650px"></iframe>--%>

</body>

</html>
<script src="${ctx}/common/jquery/jquery3.4.1.js"></script>
<script src="${ctx}/common/jquery/jquery.cookie.js"></script>
<script src="${ctx}/common/bootstrap/js/bootstrap.min.js"></script>
<script src="${ctx}/common/ztree/jquery.ztree.all.min.js"></script>
<script src="${ctx}/statics/js/main.js"></script>
<script src="${ctx}/statics/js/yh.js"></script>


