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
    <meta charset="utf-8">
    <title>注册界面</title>
    <link rel="stylesheet" href="<%=basePath%>css/reset.css"/>
    <link rel="stylesheet" href="<%=basePath%>css/common.css"/>
    <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css"/>
    <style type="text/css">
        ._flex {
            display: flex;
        }

        .can_div {
            margin: 20px 0px 0px 0px;
            border: 1px solid red;
            height: 40px;

        }
    </style>
</head>
<body>
<div class="wrap login_wrap">
    <div class="content">
        <div class="logo"></div>

        <div class="login_box">

            <div class="login_form">
                <div class="login_title">
                    注册
                </div>
                <form action="#" method="post">
                    <div class="father">
                        <div class="form_text_ipt">
                            <input name="username" type="text" id="inpUserName" placeholder="手机号/邮箱">
                        </div>
                        <div class="ececk_warning"></div>
                    </div>
                    <div class="father">
                        <div class="form_text_ipt">
                            <input name="password" type="password" id="inpPWD" placeholder="密码，6-16字符">
                        </div>
                        <div class="ececk_warning"></div>
                    </div>
                    <div class="father">
                        <div class="form_text_ipt">
                            <input name="repassword" type="password" id="inpPWD2" placeholder="重复密码">
                        </div>
                        <div class="ececk_warning"></div>
                    </div>
                    <div class="father">
                        <div class="form_text_ipt  _flex">
                            <input style="width: 200px;" name="code" type="text" id="inpYZM" placeholder="验证码">
                            <canvas id="canvas" width="100px" height="30"></canvas>
                        </div>
                        <div class="ececk_warning"></div>
                    </div>
                    <div class="form_btn">
                        <button type="button" onclick="btn()">注册</button>
                    </div>
                    <div class="form_reg_btn">
                        <span>已有帐号？</span><a href="<%=basePath%>pageController/login">马上登录</a>
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
<script src="<%=basePath%>js/verificationCode.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    var inputOne = false
    var inputTwo = false
    var inputThree = false
    var inputFour = false
    $(function () {
        $("input").change(
            function () {
                checkResult = $(this).parent().parent().children("div.ececk_warning")
                checkResultFather = $(this).parent();
                //获取当前input框改变的具体id
                var id = $(this).attr("id");
                // id为inpUserName的input框触发change事件
                if (id == "inpUserName") {
                    var a = $(this).val();
                    //匹配正则表达式:手机号码
                    var regexPhone = /^1\d{10}$/
                    var regexEmail = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/
                    if (regexPhone.test(a) || regexEmail.test(a)) {
                        //AJAX
                        $.post("<%=basePath%>userController/queryUserByusername", {
                            username: a
                        }, function (data) {
                            if (data == "true") {
                                checkResultFather.css("border", "2px solid red");
                                checkResult.html('太受欢迎了，换一个')
                                inputOne = false;
                            } else {
                                checkResultFather.css("border", "2px solid green");
                                checkResult.html('')
                                inputOne = true;
                            }
                        })
                        //正则表达式没对的时候
                    } else {
                        checkResult.html('用户名必须为手机号，或者邮箱')
                        inputOne = false;
                    }
                    // id为inpPWD的input框触发change事件
                } else if (id == "inpPWD") {
                    var a = $(this).val();
                    var regex = /^.{6,16}$/
                    if (regex.test(a)) {
                        checkResultFather.css("border", "2px solid green");
                        checkResult.html('')
                        inputTwo = true
                    } else {
                        checkResultFather.css("border", "2px solid red");
                        checkResult.html('任意字符, 6-16位')
                        inputTwo = false
                    }
                } else if (id == "inpPWD2") {
                    var a = $(this).val();
                    var b = $("#inpPWD").val();
                    if (a == b) {
                        checkResultFather.css("border", "2px solid green");
                        checkResult.html('')
                        inputThree = true
                    } else {
                        checkResultFather.css("border", "2px solid red");
                        checkResult.html('两次密码输入不一致')
                        inputThree = false
                    }
                } else if (id = "inpYZM") {
                    var val = $("#inpYZM").val().toLowerCase();
                    var num = show_num.join("");
                    if (val == num) {
                        checkResultFather.css("border", "2px solid green");
                        checkResult.html('')
                        inputFour = true
                    } else {
                        checkResultFather.css("border", "2px solid red");
                        checkResult.html('验证码错误')
                        inputFour = false
                    }
                }
            }
        )
    })

    function btn() {
        alert(inputOne)
        alert(inputTwo)
        alert(inputThree)
        alert(inputFour)
        if ((inputOne && inputTwo) && (inputThree && inputFour)) {
            alert("注册成功")
        } else {
            alert("注册失败")
        }
    }
</script>
</body>
</html>
