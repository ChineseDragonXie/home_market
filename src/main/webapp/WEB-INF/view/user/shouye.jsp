<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
        <title></title>
        <meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="css/shouye.css" />
		<style type="text/css">
			.menu:hover {
				color: white;
				background-color: #808080;
			}
			.menu_font:hover {
				color: rgb(232, 25, 79);
			}

			* {
				margin: 0;
				padding: 0
			}

			.menu:hover .menu_div {
				display: block;
				background-color: rgba(128,128,128,0.8);
			}

			.daohan {
				width: 100%;
				height: 30px;
				background-color: rgb(245, 245, 245);
			}
            table {
    	        margin-top: -100px;
	            margin: auto;
	            width: 1200px;
	            background-color: white;
            }


			.top {
				/* border: 1px solid red; */
				width: 100%;
				height: 100px;
			}

			.top_div {
				background-color: rgb(245, 245, 245);
				width: 100%;
				height: 28px;
				display: flex;
				position: relative;
			}

			.menu_flex {
				display: flex;
				line-height: 50px;
			}

			.menu {
				font-size: 14px;
				line-height: 30px;
				color: rgb(102, 102, 102);
				margin-left: 50px;
				cursor: pointer;
			}
		    .menu_deng{
	            font-size: 14px;
				line-height: 30px;
				color: rgb(102, 102, 102);
				margin-left: 10px;
				cursor: pointer;
		    }
                .menu_deng1 {
	            font-size: 14px;
				line-height: 30px;
				color: rgb(102, 102, 102);
				margin-left: 50px;
				cursor: pointer;
                margin-right:20px;
		    }
			.menu_div {
				border-radius: 0 0 20px 20px;
				width: 100%;
				height: 150px;
				position: absolute;
				top: 28px;
				left: 0px;
				display: none;
				background-color: rgba(255, 255, 255, 0.8);
				cursor: pointer;
				z-index: 1;
			}

			.menu_xiangxi {
				display: flex;
				flex-wrap: wrap;
				justify-content: center;
			}

			.menu_font {
				margin-left: 100px;
				font-size: 15px;
				color: white;
			}

		</style>
	</head>
	<body>
        <form id="form1" runat="server">
		<div class="daohan">
			<table>
				<tr>
					<td>
						<div class="top">
							<div class="top_div">
								<div class="menu_flex">
									<div class="menu" id="shouye">首页
									</div>
									<script type="text/javascript">
										var mybtn = document.querySelector("#shouye")
										mybtn.onclick = function() {
										top.location = "shouye.aspx"
										}
									</script>
									<div class="to_bottom"></div>
								</div>



								<div class="menu_flex">
									<div class="menu">我的信息
										<div class="menu_div">
											<div class="menu_xiangxi">
												<div class="menu_font" id="login">账号登陆</div>
												<script type="text/javascript">
													var mybtn = document.querySelector("#login")
													mybtn.onclick = function() {
														top.location = "Login.aspx"
													}
												</script>
												<div class="menu_font" id="huiyuan">会员中心</div>
												<script type="text/javascript">
													var mybtn = document.querySelector("#huiyuan")
													mybtn.onclick = function() {
														top.location = "vipshouye.html"
                                                    }

												</script>
												<div class="menu_font">账号绑定</div>
												<div class="menu_font">地址管理</div>
											</div>
										</div>
									</div>
									<div class="to_bottom"></div>
								</div>

								<div class="menu_flex">
									<div class="menu">店铺管理
										<div class="menu_div">
											<div class="menu_xiangxi">
												<div class="menu_font" id="srtor">店铺管理</div>
												<div class="menu_font" id="srtor">交易管理</div>
												<div class="menu_font" id="srtor">物流管理</div>
												<div class="menu_font" id="srtor">宝贝管理</div>
												<div class="menu_font" id="srtor">客服服务</div>
											</div>
										</div>
									</div>
									<div class="to_bottom"></div>
								</div>

								<div class="menu_flex">
									<div class="menu" id="dingdan">购物车(100)</div>
									<script type="text/javascript">
										var mybtn = document.querySelector("#dingdan")
										mybtn.onclick = function() {
											top.location = "gouwuche.aspx"
										}
									</script>
								</div>

								<div class="menu_flex">
									<div class="menu">订单管理
										<div class="menu_div">
											<div class="menu_xiangxi">
												<p style="font-size: 30px;">该功能尚未实现，敬请期待</p>
											</div>
										</div>
									</div>
								</div>

                          <div class="menu_flex">
							<div class="menu_deng1">您好，欢迎来到宅市网</div>
                             
                              <div class="menu_deng" runat="server" id="ceshi"></div>

                              <script>
                                  var menu_deng = document.querySelector(".menu_deng");
                                   
                                  var menu_deng_v = document.getElementById("ceshi").innerHTML ;
                                  menu_deng.onclick = function () {
                                      console.log(menu_deng_v)
                                      if (menu_deng_v=="登录")
                                          top.location = "Login.aspx"
                                      else 
                                          top.location = "personal.aspx"
                                  }
                              </script>
                          </div>
						</div>
                      </div>
                        </div>

						<!-- 分割线 -->
						<div class="sousu_flex">
							<div class="sousu_left">
								<div class="sousu_left_div"><img class="img1" src="images/zhaishi.png"></div>
								<div class="sousu_left_div">100%正品</div>
								<div class="sousu_left_div">放心订购</div>
								<div class="sousu_left_div">送货上门</div>
							</div>
							<div class="input_div">
								<div class="input_left"><input class="input_class" type="text" name="" id="" value="" /></div>
								<div class="input_right">找零食</div>
							</div>
						</div>
	
		<div class="menuleft">
			<div class="menuleft_div ">
				<div class="shop_menu">
					<p>坚果炒货</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">瓜子</p>
							<p class="p_ling">花生</p>
							<p class="p_ling">栗子</p>
							<p class="p_ling">坚果</p>
						</div>

					</div>
				</div>
				<div class="shop_menu">
					<p>饼干糕点</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">饼干</p>
							<p class="p_ling">威化饼</p>
							<p class="p_ling">曲奇</p>
							<p class="p_ling">苏打/夹心饼干</p>
							<p class="p_ling">苏打/夹心饼干</p>
							<p class="p_ling">涂层饼干</p>
							<p class="p_ling">中式糕点</p>
							<p class="p_ling">蛋卷/酥/松塔/糕点</p>
							<p class="p_ling">蛋糕</p>
							<p class="p_ling">面包</p>
						</div>
					</div>
				</div>


				<div class="shop_menu">
					<p>糖果巧克力</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">软糖</p>
							<p class="p_ling">硬糖</p>
							<p class="p_ling">棒棒糖</p>
							<p class="p_ling">含片</p>
							<p class="p_ling">果冻布丁</p>
							<p class="p_ling">龟苓膏</p>
							<p class="p_ling">巧克力</p>
						</div>
					</div>
				</div>
				<div class="shop_menu">
					<p>果干</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">梅类</p>
							<p class="p_ling">枣类</p>
							<p class="p_ling">葡萄干</p>
							<p class="p_ling">水果干</p>
							<p class="p_ling">芒果类</p>
							<p class="p_ling">果干/蔬菜干/枣</p>
						</div>
					</div>
				</div>
				<div class="shop_menu">
					<p>海味零食</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">鱼类</p>
							<p class="p_ling">海苔</p>
							<p class="p_ling">鱿鱼</p>
						</div>
					</div>
				</div>
				<div class="shop_menu">
					<p>膨化零食</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">锅巴</p>
							<p class="p_ling">米饼/米卷类</p>
							<p class="p_ling">虾片类</p>
							<p class="p_ling">脆脆条/尖角酥</p>
							<p class="p_ling">薯片类</p>
							<p class="p_ling">爆米花/其他</p>
						</div>
					</div>
				</div>
				<div class="shop_menu">
					<p>饮料/罐头/水</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">咖啡</p>
							<p class="p_ling">奶茶冲饮</p>
							<p class="p_ling">花果茶</p>
							<p class="p_ling">牛奶</p>
							<p class="p_ling">罐头</p>
							<p class="p_ling">饮料</p>
						</div>
					</div>
				</div>
				<div class="shop_menu">
					<p>素食/方便面</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">火腿肠</p>
							<p class="p_ling">蛋类制品</p>
							<p class="p_ling">方便面</p>
							<p class="p_ling">速食品</p>
						</div>
					</div>
				</div>
				<div class="shop_menu">
					<p>超爽辣条</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">卫龙</p>
							<p class="p_ling">亲嘴烧</p>
							<p class="p_ling">牛筋</p>
							<p class="p_ling">那豆皮</p>
							<p class="p_ling">火爆牛犊</p>
						</div>
					</div>
				</div>
				<div class="shop_menu">
					<p>特产零食</p>
					<div class="shop_xianqing">
						<div class="xiangqing1">
							<p class="p_ling">广东</p>
							<p class="p_ling">湖南</p>
							<p class="p_ling">四川</p>
							<p class="p_ling">浙江</p>
							<p class="p_ling">福建</p>
							<p class="p_ling">云南</p>
							<p class="p_ling">海南</p>
							<p class="p_ling">山东</p>
							<p class="p_ling">天津</p>
							<p class="p_ling">重庆</p>
							<p class="p_ling">内蒙古</p>
							<p class="p_ling">河南</p>
							<p class="p_ling">云南</p>
							<p class="p_ling">海南</p>
							<p class="p_ling">山东</p>
							<p class="p_ling">天津</p>
							<p class="p_ling">重庆</p>
							<p class="p_ling">内蒙古</p>
							<p class="p_ling">河南</p>
						</div>
					</div>
				</div>
			</div>

			<div class="box" id="box">
				<div class="inner">
					<!--轮播图-->
					<ul>
						<li><a href="#"><img src="images/1.jpg" alt=""></a></li>
						<li><a href="#"><img src="images/2.jpg" alt=""></a></li>
						<li><a href="#"><img src="images/3.jpg" alt=""></a></li>
						<li><a href="#"><img src="images/4.jpg" alt=""></a></li>
						<li><a href="#"><img src="images/5.jpg" alt=""></a></li>
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

			<div class="rdiv">
                <img class="rdiv" src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1696829358,2452985022&fm=26&gp=0.jpg" alt="Alternate Text" />
			</div>
		</div>

		<div class="shop_daohan">
			<div class="shop_daohan_pai">排序：</div>
			<div class="shop_daohan_div">销量</div>
			<div class="shop_daohan_div">新品</div>
			<div class="shop_daohan_div">价格</div>
			<div class="shop_daohan_div1">
				<div class="price">价格区间：</div>
				<div class="lim_div"><input class="lim"  name="" id="" value="" /></div>-
				<div class="lim_div"><input class="lim"  name="" id="" value="" /></div>
				<button class="btn1" type="button">确定</button>
			</div>
			<div class="shop_daohan_div2">
				<div class="s_d_div2">共<span class="span_red">12</span>个商品</div>
				<div class="page"><span class="span_red">1</span>/1</div>
				<button class="s_d_div3" style="color: #999999;">上一页</button>
				<button class="s_d_div3">下一页</button>
			</div>
		</div>

        

     
		<div class="all_shop" id="gouwuche">
       
        
<asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
    <ItemTemplate> 
           <!-- 数据库输出顶部 -->
             <div class="bian">
	             <div class="all_shop_div">
		            <div class="shop_img"><img class="_img" src="<%#Eval("tupian")%>"></div>
		                <p class="name"><%#Eval("name")%></p>
		                <p class="p_price">￥<%#Eval("new_price")%><del class="del">￥<%#Eval("old_price")%></del></p>
                     <asp:Button ID="Button3" class="shop_a" runat="server" CommandName='<%#Eval("id") %>' CommandArgument='<%#Eval("id")%>' Text="查看详情" />
                      <a class="shou_a">收藏</a>
		                <div class="xiangqing">推荐指数：<p class="zhishu"><%#Eval("tuijian")%>%</p>
	            	</div>
	            </div>
              </div>
              <!-- 数据库输出底部-->
        </ItemTemplate>
       </asp:Repeater>
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
		<script type="text/javascript">
			var mybtn = document.querySelector("#srtor")
			mybtn.onclick = function() {
				top.location = "store.html"
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
            </form>
	</body>
</html>