<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta charset="utf-8">
    <title>登录界面</title>
    <link rel="stylesheet" href="<%=basePath%>css/reset.css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common.css"/>
    <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css"/>
</head>
<body>
<div class="wrap login_wrap">
    <div class="content">
        <div class="logo"></div>
        <div class="login_box">

            <div class="login_form">
                <div class="login_title">
                    登录
                </div>
                <form action="<%=basePath%>login" method="post">
                    <div class="form_text_ipt">
                        <input name="username" type="text" placeholder="手机号/邮箱">
                    </div>
                    <div class="ececk_warning"></div>
                    <div class="form_text_ipt">
                        <input name="password" type="password" placeholder="密码">
                    </div>
                    <div class="ececk_warning"></div>
                    <div class="form_check_ipt">
                        <div class="left check_left">
                            <label><input name="" type="checkbox"> 下次自动登录</label>
                        </div>
                        <div class="right check_right">
                            <a href="#">忘记密码</a>
                        </div>
                    </div>
                    <p style="color: red;margin-left: 120px">${error}</p>
                    <div class="form_btn">
                        <button type="submit">登录</button>
                    </div>
                    <div class="form_reg_btn">
                        <span>还没有帐号？</span><a href="<%=basePath%>pageController/userRegister">马上注册</a>
                    </div>
                </form>
                <div class="other_login">
                    <div class="left other_left">
                        <span>其它登录方式</span>
                    </div>
                    <div class="right other_right">
                        <a href="#"><i class="fa fa-qq fa-2x"></i></a>
                        <a href="#"><i class="fa fa-weixin fa-2x"></i></a>
                        <a href="#"><i class="fa fa-weibo fa-2x"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<div style="text-align:center;">
</div>
</body>
</html>
