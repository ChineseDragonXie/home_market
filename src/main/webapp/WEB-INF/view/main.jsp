<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<title>网站后台管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/ace.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/ace-rtl.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/ace-skins.min.css" />
<link rel="stylesheet" href="<%=basePath%>css/style.css" />
<script src="<%=basePath%>js/ace-extra.min.js"></script>
<script src="<%=basePath%>js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	if ("ontouchend" in document)
		document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
				+ "<" +
				"script>");
</script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script src="<%=basePath%>js/typeahead-bs2.min.js"></script>
<script src="<%=basePath%>js/ace-elements.min.js"></script>
<script src="<%=basePath%>js/ace.min.js"></script>
<script src="<%=basePath%>js/layer.js" type="text/javascript"></script>
<script src="<%=basePath%>js/laydate.js" type="text/javascript"></script>
<script src="<%=basePath%>js/jquery.nicescroll.js"
	type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		var cid = $('#nav_list> li>.submenu');
		cid.each(function(i) {
			$(this).attr('id', "Sort_link_" + i);

		})
	})
	jQuery(document)
			.ready(
					function() {
						$.each($(".submenu"), function() {
							var $aobjs = $(this).children("li");
							var rowCount = $aobjs.size();
							var divHeigth = $(this).height();
							$aobjs.height(divHeigth / rowCount);
						});
						//初始化宽度、高度

						$("#main-container").height($(window).height() - 76);
						$("#iframe").height($(window).height() - 140);

						$(".sidebar").height($(window).height() - 99);
						var thisHeight = $("#nav_list").height(
								$(window).outerHeight() - 173);
						$(".submenu").height();
						$("#nav_list").children(".submenu").css("height",
								thisHeight);

						//当文档窗口发生改变时 触发  
						$(window).resize(
								function() {
									$("#main-container").height(
											$(window).height() - 76);
									$("#iframe").height(
											$(window).height() - 140);
									$(".sidebar").height(
											$(window).height() - 99);

									var thisHeight = $("#nav_list").height(
											$(window).outerHeight() - 173);
									$(".submenu").height();
									$("#nav_list").children(".submenu").css(
											"height", thisHeight);
								});
						$(document)
								.on(
										'click',
										'.iframeurl',
										function() {
											var cid = $(this).attr("name");
											var cname = $(this).attr("title");
											$("#iframe").attr("src", cid)
													.ready();
											$("#Bcrumbs").attr("href", cid)
													.ready();
											$(".Current_page a").attr('href',
													cid).ready();
											$(".Current_page")
													.attr('name', cid);
											$(".Current_page").html(cname).css(
													{
														"color" : "#333333",
														"cursor" : "default"
													}).ready();
											$("#parentIframe")
													.html(
															'<span class="parentIframe iframeurl"> </span>')
													.css("display", "none")
													.ready();
											$("#parentIfour").html('').css(
													"display", "none").ready();
										});
					});
	/******/
	$(document).on('click', '.link_cz > li', function() {
		$('.link_cz > li').removeClass('active');
		$(this).addClass('active');
	});

	$(document).ready(
			function() {
				$('#nav_list,.link_cz').find('li.home').on(
						'click',
						function() {
							$('#nav_list,.link_cz').find('li.home')
									.removeClass('active');
							$(this).addClass('active');
						});
				//时间设置
				function currentTime() {
					var d = new Date(), str = '';
					str += d.getFullYear() + '年';
					str += d.getMonth() + 1 + '月';
					str += d.getDate() + '日';
					str += d.getHours() + '时';
					str += d.getMinutes() + '分';
					str += d.getSeconds() + '秒';
					return str;
				}

				setInterval(function() {
					$('#time').html(currentTime)
				}, 1000);
				//修改密码
				$('.change_Password').on(
						'click',
						function() {
							layer.open({
								type : 1,
								title : '修改密码',
								area : [ '300px', '300px' ],
								shadeClose : true,
								content : $('#change_Pass'),
								btn : [ '确认修改' ],
								yes : function(index, layero) {
									if ($("#password").val() == "") {
										layer.alert('原密码不能为空!', {
											title : '提示框',
											icon : 0,

										});
										return false;
									}
									if ($("#Nes_pas").val() == "") {
										layer.alert('新密码不能为空!', {
											title : '提示框',
											icon : 0,

										});
										return false;
									}

									if ($("#c_mew_pas").val() == "") {
										layer.alert('确认新密码不能为空!', {
											title : '提示框',
											icon : 0,

										});
										return false;
									}
									if (!$("#c_mew_pas").val
											|| $("#c_mew_pas").val() != $(
													"#Nes_pas").val()) {
										layer.alert('密码不一致!', {
											title : '提示框',
											icon : 0,

										});
										return false;
									} else {
										layer.alert('修改成功！', {
											title : '提示框',
											icon : 1,
										});
										layer.close(index);
									}
								}
							});
						});
				$('#Exit_system').on('click', function() {
					layer.confirm('是否确定退出系统？', {
						btn : [ '是', '否' ], //按钮
						icon : 2,
					}, function() {
						location.href = "login.html";

					});
				});
			});

	function link_operating(name, title) {
		var cid = $(this).name;
		var cname = $(this).title;
		$("#iframe").attr("src", cid).ready();
		$("#Bcrumbs").attr("href", cid).ready();
		$(".Current_page a").attr('href', cid).ready();
		$(".Current_page").attr('name', cid);
		$(".Current_page").html(cname).css({
			"color" : "#333333",
			"cursor" : "default"
		}).ready();
		$("#parentIframe")
				.html('<span class="parentIframe iframeurl"> </span>').css(
						"display", "none").ready();
		$("#parentIfour").html('').css("display", "none").ready();

	}
</script>
<style type="text/css">
.red {
	height: 46px;
	line-height: 46px;
}

.dropdown-toggle i, .icc {
	width: 20px;
	margin-right: 10px;
}
</style>
</head>
<body>
	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>
		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<!-- <a href="#" class="navbar-brand"> <small> <img
						src="images/logo.png" width="470px">
				</small>
				</a> -->
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->
			<div class="navbar-header operating pull-left"></div>
			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">
					<li class="purple"><a data-toggle="dropdown"
						class="dropdown-toggle red" href="#"><i
							class="fa fa-bell" style="margin-top: 5px; font-size: 30px;"></i><span
							class="badge badge-important" style="font-size: 20px">8</span></a>
						<ul
							class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
							<li class="dropdown-header"><i class="fa fa-bullhorn"></i>8条通知</li>
							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-pink fa fa-comments-alt"></i>
											最新消息
										</span> <span class="pull-right badge badge-info">+12</span>
									</div>
							</a></li>
							<li><a href="#"> <i
									class="btn btn-xs btn-primary fa fa-user"></i> 切换为编辑登录..
							</a></li>
							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
											新订单
										</span> <span class="pull-right badge badge-success">+8</span>
									</div>
							</a></li>

							<li><a href="#">
									<div class="clearfix">
										<span class="pull-left"> <i
											class="btn btn-xs no-hover btn-info fa fa-twitter"></i> 用户消息
										</span> <span class="pull-right badge badge-info">+11</span>
									</div>
							</a></li>

							<li><a href="#"> 查看所有通知 <i class="fa fa-arrow-right"></i>
							</a></li>
						</ul></li>
					<li><marquee>宅市后台系统</marquee></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>
		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>
			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<h3 style="color: green; font-weight: bold; font-family: FZShuTi">宅市后台管理系统</h3>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span> <span class="btn btn-info"></span>

						<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
					</div>
				</div>
				<!-- #sidebar-shortcuts -->
				<div id="menu_style" class="menu_style">
					<ul class="nav nav-list" id="nav_list">
						<li class="home"><a href="javascript:void(0)"
							name="home.html" class="iframeurl" title=""><i
								class="fa fa-bell-o fa-lg icc"></i><span class="menu-text">
									系统公告 <span class="badge badge-danger">5</span>
							</span></a></li>
						<li><a href="#" class="dropdown-toggle"><i
								class="fa fa-desktop fa-lg"></i><span class="menu-text">
									商家管理 </span><b class="arrow fa fa-angle-down "></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)"
									name="Products_List.html" title="产品类表" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>商家入驻申请<span
										class="badge badge-danger">5</span></a></li>
								<li class="home"><a href="javascript:void(0)"
									name="Brand_Manage.html" title="品牌管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>商家列表</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="Category_Manage.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>商家注销</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="Category_Manage.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>评价驳回</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle"><i
								class="fa fa-list fa-lg"></i><span class="menu-text">
									销售查询</span><b class="arrow fa fa-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)"
									name="advertising.html" title="广告管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>总销售额</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="Sort_ads.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i></a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle"><i
								class="fa fa-handshake-o fa-lg"></i><span class="menu-text">
									交易管理 </span><b class="arrow fa fa-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)"
									name="Orderform.html" title="订单管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>订单管理</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="Refund.html" title="退款管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>交易明细</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="Refund.html" title="退款管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>退款管理</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle"><i
								class="fa fa-user fa-lg"></i><span class="menu-text">
									会员管理 </span><b class="arrow fa fa-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)"
									name="user_list.html" title="会员列表" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>会员列表</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="member-Grading.html" title="等级管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>等级管理</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="integration.html" title="会员记录管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>会员记录管理</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle"><i
								class="fa fa-comment-o fa-lg"></i><span class="menu-text">
									消息管理 </span><b class="arrow fa fa-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)"
									name="Guestbook.html" title="留言列表" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>留言列表</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="Feedback.html" title="意见反馈" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>意见反馈</a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle"><i
								class="fa fa-bookmark fa-lg"></i><span class="menu-text">
									商品管理 </span><b class="arrow fa fa-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)"
									name="article_list.html" title="商品列表" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>商品列表</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="article_Sort.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>商品分类</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="article_Sort.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>商品上架</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="article_Sort.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>上架审核<span
										class="badge badge-danger">5</span></a></li>
							</ul></li>


						<li><a href="#" class="dropdown-toggle"><i
								class="fa fa-paper-plane fa-lg"></i><span class="menu-text">
									用户评价</span><b class="arrow fa fa-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)"
									name="article_Sort.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>好评</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="article_Sort.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>中评</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="article_Sort.html" title="分类管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>差评<span
										class="badge badge-danger">5</span></a></li>
							</ul></li>
						<li><a href="#" class="dropdown-toggle"><i
								class="fa fa-group fa-lg"></i><span class="menu-text">
									管理员管理 </span><b class="arrow fa fa-angle-down"></b></a>
							<ul class="submenu">
								<li class="home"><a href="javascript:void(0)"
									name="admin_Competence.html" title="权限管理" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>权限管理</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="administrator.html" title="管理员列表" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>管理员列表</a></li>
								<li class="home"><a href="javascript:void(0)"
									name="admin_info.html" title="个人信息" class="iframeurl"><i
										class="fa fa-double-angle-right"></i>个人信息</a></li>
							</ul></li>
					</ul>
				</div>
				<script type="text/javascript">
					$("#menu_style").niceScroll({
						cursorcolor : "#888888",
						cursoropacitymax : 1,
						touchbehavior : false,
						cursorwidth : "5px",
						cursorborder : "0",
						cursorborderradius : "5px"
					});
				</script>
				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="fa fa-double-angle-left"
						data-icon1="fa fa-double-angle-left"
						data-icon2="fa fa-double-angle-right"></i>
				</div>
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>

			<div class="main-content">
				<script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script>
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="fa fa-home home-icon"></i> <a href="index.html">首页</a>
						</li>
						<li class="active"><span class="Current_page iframeurl"></span></li>
						<li class="active" id="parentIframe"><span
							class="parentIframe iframeurl"></span></li>
						<li class="active" id="parentIfour"><span
							class="parentIfour iframeurl"></span></li>
					</ul>
				</div>

				<iframe id="iframe"
					style="border: 0; width: 100%; background-color: #FFF;"
					name="iframe" frameborder="0" src="home.html"> </iframe>


				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->

			<div class="ace-settings-container" id="ace-settings-container">
				<div class="btn btn-app btn-xs btn-warning ace-settings-btn"
					id="ace-settings-btn">
					<i class="fa fa-cog bigger-150"></i>
				</div>

				<div class="ace-settings-box" id="ace-settings-box">
					<div>
						<div class="pull-left">
							<select id="skin-colorpicker" class="hide">
								<option data-skin="default" value="#438EB9">#438EB9</option>
								<option data-skin="skin-1" value="#222A2D">#222A2D</option>
								<option data-skin="skin-2" value="#C6487E">#C6487E</option>
								<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
							</select>
						</div>
						<span>&nbsp; 选择皮肤</span>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-sidebar" /> <label class="lbl"
							for="ace-settings-sidebar"> 固定滑动条</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-rtl" /> <label class="lbl"
							for="ace-settings-rtl">切换到左边</label>
					</div>

					<div>
						<input type="checkbox" class="ace ace-checkbox-2"
							id="ace-settings-add-container" /> <label class="lbl"
							for="ace-settings-add-container"> 切换窄屏 <b></b>
						</label>
					</div>
				</div>
			</div>
			<!-- /#ace-settings-container -->
		</div>
		<!-- /.main-container-inner -->

	</div>
	<!--底部样式-->

	<div class="footer_style" id="footerstyle">
		<script type="text/javascript">
			try {
				ace.settings.check('footerstyle', 'fixed')
			} catch (e) {
			}
		</script>
	</div>
	<!--修改密码样式-->
	<div class="change_Pass_style" id="change_Pass">
		<ul class="xg_style">
			<li><label class="label_name">原&nbsp;&nbsp;密&nbsp;码</label><input
				name="原密码" type="password" class="" id="password"></li>
			<li><label class="label_name">新&nbsp;&nbsp;密&nbsp;码</label><input
				name="新密码" type="password" class="" id="Nes_pas"></li>
			<li><label class="label_name">确认密码</label><input name="再次确认密码"
				type="password" class="" id="c_mew_pas"></li>
		</ul>
	</div>
</body>
</html>
