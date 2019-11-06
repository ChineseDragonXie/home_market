<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	String All=(String)session.getAttribute("All");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title></title>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/shouye.css" />
	<style type="text/css">
		* {
			margin: 0;
			padding: 0
		}
		.menu:hover .menu_div {
			display: block;
			background-color: rgba(128,128,128,0.8);
		}
		table {
			margin: auto;
			width: 1200px;
			background-color: white;
		}
		.User1{
			width: 1200px;
			margin: 0 auto;
			height: 100px;
		}
	</style>
</head>
<body>
<div class="User1"></div>
<table>
	<tr>
		<td>
	<!-- 分割线 -->
	<div class="sousu_flex">
		<div class="sousu_left">
			<div class="sousu_left_div"><img class="img1" src="images/zhaishi.png"></div>
			<div class="sousu_left_div">100%正品</div>
			<div class="sousu_left_div">放心订购</div>
			<div class="sousu_left_div">送货上门</div>
		</div>
		<div class="input_div">
			<div class="input_left"><input class="input_class" type="text" name="" value="" /></div>
			<div class="input_right">找书籍</div>
		</div>
	</div>
	
	<div class="menuleft">
		<div class="menuleft_div ">
			<div class="shop_menu">
				<p>经济管理</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">市场营销</p>
						<p class="p_ling">经济学分析</p>
						<p class="p_ling">国际贸易</p>
						<p class="p_ling">财务管理</p>
					</div>
				
				</div>
			</div>
			<div class="shop_menu">
				<p>文学艺术</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">设计</p>
						<p class="p_ling">音乐</p>
						<p class="p_ling">青春文学</p>
						<p class="p_ling">绘画</p>
						<p class="p_ling">外国文学</p>
						<p class="p_ling">人物传记</p>
						<p class="p_ling">古典书籍</p>
						<p class="p_ling">经典巨作</p>
						<p class="p_ling">文学作评</p>
						<p class="p_ling">影视文学</p>
					</div>
				</div>
			</div>
			
			
			<div class="shop_menu">
				<p>人文社科</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">数学</p>
						<p class="p_ling">英语教材</p>
						<p class="p_ling">化学</p>
						<p class="p_ling">日语</p>
						<p class="p_ling">生物科学</p>
						<p class="p_ling">专业英语</p>
						<p class="p_ling">语言文学</p>
					</div>
				</div>
			</div>
			
			<div class="shop_menu">
				<p>科学技术</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">语言与编程</p>
						<p class="p_ling">电子通信</p>
						<p class="p_ling">电工电子</p>
						<p class="p_ling">数据库</p>
						<p class="p_ling">建筑工程</p>
						<p class="p_ling">土木工程</p>
					</div>
				</div>
			</div>
			
			<div class="shop_menu">
				<p>生活休闲</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">家庭保健</p>
						<p class="p_ling">美食烹饪</p>
						<p class="p_ling">动漫卡通</p>
					</div>
				</div>
			</div>
			
			<div class="shop_menu">
				<p>教育考试</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">教学理论</p>
						<p class="p_ling">自考</p>
						<p class="p_ling">研究生考试</p>
						<p class="p_ling">考研英语</p>
						<p class="p_ling">公务员考试</p>
						<p class="p_ling">初高中用书</p>
					</div>
				</div>
			</div>
			
			<div class="shop_menu">
				<p>收藏鉴赏</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">玉器宝石</p>
						<p class="p_ling">书画</p>
						<p class="p_ling">钱币</p>
						<p class="p_ling">古代家具</p>
						<p class="p_ling">名人墨迹</p>
						<p class="p_ling">收藏百科</p>
					</div>
				</div>
			</div>
			
			<div class="shop_menu">
				<p>文学小学</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">文集</p>
						<p class="p_ling">现代文学</p>
						<p class="p_ling">文学史</p>
						<p class="p_ling">文学理论</p>
					</div>
				</div>
			</div>
			
			<div class="shop_menu">
				<p>文化历史</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">中国文化</p>
						<p class="p_ling">古代文明</p>
						<p class="p_ling">史学理论</p>
						<p class="p_ling">中国史</p>
						<p class="p_ling">世界史</p>
					</div>
				</div>
			</div>
			
			<div class="shop_menu">
				<p>艺术</p>
				<div class="shop_xianqing">
					<div class="xiangqing1">
						<p class="p_ling">乐器</p>
						<p class="p_ling">摄影摄像</p>
						<p class="p_ling">动画</p>
						<p class="p_ling">设计</p>
						<p class="p_ling">书法篆刻</p>
						<p class="p_ling">艺术史</p>
						<p class="p_ling">绘画</p>
						<p class="p_ling">影视</p>
						<p class="p_ling">美术</p>
						<p class="p_ling">艺术理论</p>
						<p class="p_ling">建筑艺术</p>
						<p class="p_ling">人体艺术</p>
						<p class="p_ling">舞台戏曲</p>
						<p class="p_ling">素描速写</p>
						<p class="p_ling">美术</p>
						<p class="p_ling">习题辅导</p>
						<p class="p_ling">时尚</p>
						<p class="p_ling">外国小学</p>
						<p class="p_ling">纪实文学</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="box" id="box">
			<div class="inner">
				<!--轮播图-->
				<ul>
					<li><a href="#"><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561819733752&di=df2430b8a45cc2bb46ede41b2d4d05c0&imgtype=0&src=http%3A%2F%2Fgfs17.gomein.net.cn%2FT1PkKTBmW_1RCvBVdK_800.jpg" alt=""></a></li>
					<li><a href="#"><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561819733747&di=994054a5262b6c314231cbfd88f38e0a&imgtype=0&src=http%3A%2F%2Fimg11.360buyimg.com%2Fn1%2Fjfs%2Ft1%2F25652%2F36%2F4577%2F247113%2F5c33fc54E19ceeb6d%2Faffd9d46c71cb030.jpg%2521q90" alt=""></a></li>
					<li><a href="#"><img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1575362839,1461727340&fm=26&gp=0.jpg" alt=""></a></li>
					<li><a href="#"><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561819796703&di=d697f42c5b838b7f8ac61ae5a5d05f4b&imgtype=0&src=http%3A%2F%2Fimg.alicdn.com%2Fimgextra%2Fi2%2F822196805%2FTB2b59coFuWBuNjSszbXXcS7FXa_%2521%2521822196805.jpg" alt=""></a></li>
					<li><a href="#"><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561819898984&di=60e5d3b2967fb5fdf29b3a3cc0d73fae&imgtype=0&src=http%3A%2F%2Fimage5.suning.cn%2Fuimg%2Fb2c%2Fnewcatentries%2F0070160906-000000000102366545_2_800x800.jpg" alt=""></a></li>
				</ul>
				<ol class="bar">
				</ol>
				<!--左右焦点-->
				<div id="arr">
						<span id="left">
							< </span> <span id="right">
								>
						</span>
				</div>
			</div>
		</div>
		
		<div class="rdiv"><img class="rdiv" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561823796610&di=a41b9256d47c15c53ac1015cfa82ea84&imgtype=0&src=http%3A%2F%2Fimg.ph.126.net%2FQu8CPSeEPicyEVyZx47T0w%3D%3D%2F3269894804448002329.jpg" alt=""></div>
		
	</div>
	
	<div class="shop_daohan">
		<div class="shop_daohan_pai">排序：</div>
		<div class="shop_daohan_div">销量</div>
		<div class="shop_daohan_div">新品</div>
		<div class="shop_daohan_div">价格</div>
		<div class="shop_daohan_div1">
			<div class="price">价格区间：</div>
			<div class="lim_div"><input class="lim"  name="" value="" /></div>-
			<div class="lim_div"><input class="lim"  name=""  value="" /></div>
			<button class="btn1" type="button">确定</button>
		</div>
		<div class="shop_daohan_div2">
			<div class="s_d_div2">共<span class="span_red1">5</span>个商品</div>
			<div class="page"><span class="span_red">1</span>/1</div>
			<button class="s_d_div3" style="color: #999999;">上一页</button>
			<button class="s_d_div3">下一页</button>
		</div>
	</div>
	<div class="all_shop" id="gouwuche">
		
				<!-- 数据库输出顶部 -->
		<c:forEach var="B" items="${bookAll}">
				<div class="bian">
					<div class="all_shop_div">
						<div class="shop_img"><img class="_img" src="upload/${B.photo}"onerror="onerror=null;src='images/fail.gif'"></div>
						<p class="name">${B.name}</p>
						<p class="p_price">￥${B.price}<del class="del">￥${B.price+5.5}</del></p>
						<a href='QueryXinxiServlet?name="${B.id}"'><button class="shop_a">查看详情</button></a>
						<a class="shou_a">收藏</a>
						<div class="xiangqing">推荐指数：<p class="zhishu">90%</p>
						</div>
					</div>
				</div>
		</c:forEach>
				<!-- 数据库输出底部-->
	</div>
	
	<script type="text/javascript">
        function my$(id) {
            return document.getElementById(id);
        }
        var box = my$("box");
        var inner = box.children[0];
        var ulObj = inner.children[0];
        var list = ulObj.children;
        var olObj = inner.children[1];
        var arr = my$("arr");
        var imgWidth = inner.offsetWidth;
        var right = my$("right");
        var pic = 0;
        //根据li个数，创建小按钮
        for (var i = 0; i < list.length; i++) {
            var liObj = document.createElement("li");

            olObj.appendChild(liObj);
            liObj.innerText = (i + 1);
            liObj.setAttribute("index", i);

            //为按钮注册mouseover事件
            liObj.onmouseover = function() {
                //先清除所有按钮的样式

                for (var j = 0; j < olObj.children.length; j++) {
                    olObj.children[j].removeAttribute("class");
                }
                this.className = "current";
                pic = this.getAttribute("index");
                animate(ulObj, -pic * imgWidth);
            }

        }
        //设置ol中第一个li有背景颜色
        olObj.children[0].className = "current";
        //克隆一个ul中第一个li,加入到ul中的最后=====克隆
        ulObj.appendChild(ulObj.children[0].cloneNode(true));

        var timeId = setInterval(onmouseclickHandle, 2000);
        //左右焦点实现点击切换图片功能
        box.onmouseover = function() {
            arr.style.display = "block";
            clearInterval(timeId);
        };
        box.onmouseout = function() {
            arr.style.display = "none";
            timeId = setInterval(onmouseclickHandle, 2000);
        };

        right.onclick = onmouseclickHandle;

        function onmouseclickHandle() {
            //如果pic的值是5,恰巧是ul中li的个数-1的值,此时页面显示第六个图片,而用户会认为这是第一个图,
            //所以,如果用户再次点击按钮,用户应该看到第二个图片
            if (pic == list.length - 1) {
                //如何从第6个图,跳转到第一个图
                pic = 0; //先设置pic=0
                ulObj.style.left = 0 + "px"; //把ul的位置还原成开始的默认位置
            }
            pic++; //立刻设置pic加1,那么此时用户就会看到第二个图片了
            animate(ulObj, -pic * imgWidth); //pic从0的值加1之后,pic的值是1,然后ul移动出去一个图片
            //如果pic==5说明,此时显示第6个图(内容是第一张图片),第一个小按钮有颜色,
            if (pic == list.length - 1) {
                //第五个按钮颜色干掉
                olObj.children[olObj.children.length - 1].className = "";
                //第一个按钮颜色设置上
                olObj.children[0].className = "current";
            } else {
                //干掉所有的小按钮的背景颜色
                for (var i = 0; i < olObj.children.length; i++) {
                    olObj.children[i].removeAttribute("class");
                }
                olObj.children[pic].className = "current";
            }
        }
        left.onclick = function() {
            if (pic == 0) {
                pic = list.length - 1;
                ulObj.style.left = -pic * imgWidth + "px";
            }
            pic--;
            animate(ulObj, -pic * imgWidth);
            for (var i = 0; i < olObj.children.length; i++) {
                olObj.children[i].removeAttribute("class");
            }
            //当前的pic索引对应的按钮设置颜色
            olObj.children[pic].className = "current";
        };
        //设置任意的一个元素,移动到指定的目标位置
        function animate(element, target) {
            clearInterval(element.timeId);
            //定时器的id值存储到对象的一个属性中
            element.timeId = setInterval(function() {
                //获取元素的当前的位置,数字类型
                var current = element.offsetLeft;
                //每次移动的距离
                var step = 10;
                step = current < target ? step : -step;
                //当前移动到位置
                current += step;
                if (Math.abs(current - target) > Math.abs(step)) {
                    element.style.left = current + "px";
                } else {
                    //清理定时器
                    clearInterval(element.timeId);
                    //直接到达目标
                    element.style.left = target + "px";
                }
            }, 10);
        }
	</script>
	</td>
	</tr>
	</table>
	<div class="bottom1"></div>
	<div class="bottom2">
		<table>
			<tr>
				<td>
					<div class="bottom_flex">
						<div class="bottom_font">正品采购</div>
						<div class="bottom_font">如实描写</div>
						<div class="bottom_font">专业配送</div>
						<div class="bottom_font">金牌服务</div>
						<div class="bottom_font">万千信赖</div>
						<div class="bottom_font">权威荣誉</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	<hr>
	
	
	<div class="bottom3">
		<table>
			<tr>
				<td>
					<div class="bottom_flex1">
						<div class="help">
							<p class="p_head">新手指南</p>
							<p class="p_all">找回密码</p>
							<p class="p_all">购物流程</p>
							<p class="p_all">会员注册</p>
							<p class="p_all">积分制度</p>
						</div>
						<div class="help">
							<p class="p_head">付款说明</p>
							<p class="p_all">商品发票</p>
							<p class="p_all">办理退款</p>
							<p class="p_all">支付方式</p>
						</div>
						<div class="help">
							<p class="p_head">配送说明</p>
							<p class="p_all">配送运费</p>
							<p class="p_all">配送时间</p>
							<p class="p_all">配送方式&运费</p>
						</div>
						<div class="help">
							<p class="p_head">客户服务</p>
							<p class="p_all">订单速查</p>
							<p class="p_all">代金券</p>
							<p class="p_all">常见问题</p>
						</div>
						<div class="help">
							<p class="p_head">客服热线</p>
							<p class="p_al">周一至周五：8：00-17：00</p>
							<p class="number">100-200-300</p>
							<p class="p_head">招商热线</p>
							<p class="p_al">周一至周五：8：00-17：00</p>
							<p class="number">100-200-300</p>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>
	</td>
	</tr>
	</table>
<%
	String name=(String)session.getAttribute("name");
%>
<script type="text/javascript">
	var All=document.querySelector(".span_red1")
	All.innerHTML=<%=All%>
    var name1=document.querySelector(".User1")
    name1.innerHTML="欢迎您！<%=name%>";
</script>
</body>
</html>