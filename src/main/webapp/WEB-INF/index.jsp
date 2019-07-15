<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>首页</title>

    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>

    <link href="../css/hmstyle.css" rel="stylesheet" type="text/css"/>
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
    <style>
        .search-bar form {
            border: solid #FF0036;
            border-radius: 80px;
            overflow: hidden;
        }

        .slideall {
            background: #fff0 !important;
        }

        .long-title {
            background: #A978EF;
        }

        .nav-cont li a {
            color: #fff;
        }

        .bg {
            position: absolute;
            height: 45px;
            background: linear-gradient(to right, #6C52D5, #34B6BB);
            /* 标准的语法 */
            width: 100%;
        }

        #ai-topsearch {
            background: #ff0036 none repeat scroll 0% 0% !important;
        }

        .banner {
            border-top: 0px solid #d2364c !important;
        }
    </style>
</head>
<body>
<#include "inc/index_header.ftl"/>

    <div class="banner">
        <!--轮播 -->
        <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
            <ul class="am-slides">
                <li class="banner1">
                    <a href="introduction.html">
                        <img src="../images/ad1.jpg" />
                    </a>
                </li>
                <li class="banner2">
                    <a>
                        <img src="../images/ad2.jpg" />
                    </a>
                </li>
                <li class="banner3">
                    <a>
                        <img src="../images/ad3.jpg" />
                    </a>
                </li>
                <li class="banner4">
                    <a>
                        <img src="../images/ad4.jpg" />
                    </a>
                </li>

            </ul>
        </div>
        <div class="clear"></div>
    </div>

    <div class="shopNav" style="margin: 0;">
        <div class="bg"></div>
        <div class="slideall">

            <div class="long-title">
                <span class="all-goods">全部分类</span>
            </div>
            <div class="nav-cont">
                <ul>
                    <li class="index"><a href="/index.html">首页</a></li>
                    <li class="qc"><a href="/item/search.html?q=new">最新商品</a></li>
                    <li class="qc"><a href="/item/search.html?q=hot">火爆热卖</a></li>
                    <li class="qc"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=735999615&site=qq&menu=yes">在线客服</a>
                    </li>
                    <li class="qc last"><a href="/suggest.html">意见反馈</a></li>
                </ul>
            </div>
            <!--侧边导航 -->
            <div id="nav" class="navfull" style="position:relative; top:-3px;">
                    <div class="area clearfix">
                    <div class="category-content" id="guide_2">
                    <div class="category">
                    <ul class="category-list" id="js_climit_li">
                        <#list cats as cat>
                            <!-- 限制取10条 -->
                            <#if cat_index==10><#break></#if>

                            <#if cat_index==0>
                                <li class="appliance js_toggle relative first">
                            <#else>
                                <li class="appliance js_toggle relative">
                            </#if>
                            <div class="category-info">
                                <h3 class="category-name b-category-name">
                                <i><img src="../images/cake.png"></i>
                                <a class="ml-22" href="/item/search.html?q=${cat.text}"
                                       title="${cat.text}">${cat.text}</a>
                                               </h3>
                                               <em>&gt;</em>
                                               </div>
                                               <div class="menu-item menu-in top">
                                <div class="area-in">
                                <div class="area-bg">
                                <div class="menu-srot">
                                <div class="sort-side">
                            <#list cat.nodes as node>
                                <dl class="dl-sort">
                                    <dt>
                                        <span title="${node.text}">${node.text}</span>
                                    </dt>
                                <#if node.nodes?exists>
                                    <#list node.nodes as node>
                                    <dd>
                                        <a title="${node.text}" href="/item/search.html?q=${node.text}"><span>${node.text}</span></a>
                                    </dd>
                                    </#list>
                                </#if>
                                </dl>
                            </#list>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <b class="arrow"></b>
                        </li>
                        </#list>
                    </ul>
                    </div>
                    </div>
                    </div>
                    </div>
                    <!--轮播 -->
                    <script type="text/javascript">
                (function () {
                    $('.am-slider').flexslider();
                });
                $(document).ready(function () {
                    $("li").hover(function () {
                        $(".category-content .category-list li.first .menu-in").css("display", "none");
                        $(".category-content .category-list li.first").removeClass("hover");
                        $(this).addClass("hover");
                        $(this).children("div.menu-in").css("display", "block")
                    }, function () {
                        $(this).removeClass("hover")
                        $(this).children("div.menu-in").css("display", "none")
                    });
                })
            </script>


            <!--小导航 -->
            <div class="am-g am-g-fixed smallnav">
                <div class="am-u-sm-3">
                    <a href="sort.html"><img src="../images/navsmall.jpg"/>
                        <div class="title">商品分类</div>
                    </a>
                </div>
                <div class="am-u-sm-3">
                    <a href="#"><img src="../images/huismall.jpg"/>
                        <div class="title">大聚惠</div>
                    </a>
                </div>
                <div class="am-u-sm-3">
                    <a href="#"><img src="../images/mansmall.jpg"/>
                        <div class="title">个人中心</div>
                    </a>
                </div>
                <div class="am-u-sm-3">
                    <a href="#"><img src="../images/moneysmall.jpg"/>
                        <div class="title">投资理财</div>
                    </a>
                </div>
            </div>

            <!--走马灯 -->
            <div class="marqueen">
                <span class="marqueen-title">个人信息</span>
                <div class="demo">
                    <ul>
                        <@shiro.authenticated>
                            <div class="mod-vip">
                                <div class="m-baseinfo">
                                    <a href="../user/index.html">
                                        <img src="${IMAGE_BASE_URL}<@shiro.principal property="avatar"/>">
                                    </a>
                                    <em>
                                        Hi,欢迎回来[<span class="s-name"><@shiro.principal property="username"/></span>]
                                    </em>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="am-container">
                                <div class="am-panel-group" id="accordion">
                                    <div class="am-panel am-panel-default">
                                        <div class="am-panel-hd">
                                            <h4 class="am-panel-title"
                                                data-am-collapse="{parent: '#accordion', target: '#do-not-say-1'}">
                                                平台背景
                                            </h4>
                                        </div>
                                        <div id="do-not-say-1" class="am-panel-collapse am-collapse am-in">
                                            <div class="am-panel-bd" style="color:black;">
                                                商务跨境电子，是“一带一路”国家战略的重要实施途径，也是供给侧结构性改革的有效推动力。
                                            </div>
                                        </div>
                                    </div>
                                    <div class="am-panel am-panel-default">
                                        <div class="am-panel-hd">
                                            <h4 class="am-panel-title"
                                                data-am-collapse="{parent: '#accordion', target: '#do-not-say-2'}">
                                                平台介绍
                                            </h4>
                                        </div>
                                        <div id="do-not-say-2" class="am-panel-collapse am-collapse">
                                            <div class="am-panel-bd" style="color:black;">
                                                Global  Shopping是一个跨境电子商务平台，它面向供应商、借卖商。
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </@shiro.authenticated>
                        <@shiro.notAuthenticated>
                            <div class="mod-vip">
                                <div class="m-baseinfo">
                                    <a href="#">
                                        <img src="images/getAvatar.do.jpg">
                                    </a>
                                    <em>
                                        抱歉,<span class="s-name">请登录</span>
                                    </em>
                                </div>
                                <div class="member-logout">
                                    <a class="am-btn-warning btn" href="/login.html">登录</a>
                                    <a class="am-btn-warning btn" href="/register.html">注册</a>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="am-container">
                                <div class="am-panel-group" id="accordion">
                                    <div class="am-panel am-panel-default">
                                        <div class="am-panel-hd">
                                            <h4 class="am-panel-title"
                                                data-am-collapse="{parent: '#accordion', target: '#do-not-say-1'}">
                                                我要供货
                                            </h4>
                                        </div>
                                        <div id="do-not-say-1" class="am-panel-collapse am-collapse am-in">
                                            <div class="am-panel-bd" style="color:black;">
                                                作为供应商，面临库存难以消化，渠道拓展成本太高，不熟悉网络销售，人手不够等重重困难如何解决？我们为您提供电子商务分销完整解决方案！
                                            </div>
                                        </div>
                                    </div>
                                    <div class="am-panel am-panel-default">
                                        <div class="am-panel-hd">
                                            <h4 class="am-panel-title"
                                                data-am-collapse="{parent: '#accordion', target: '#do-not-say-2'}">
                                                我要分销
                                            </h4>
                                        </div>
                                        <div id="do-not-say-2" class="am-panel-collapse am-collapse">
                                            <div class="am-panel-bd" style="color:black;">
                                                作为外贸网络零售，您是否常常遇到新产品开发缓慢，备货压力大，仓储场地有限等情况？我们为您提供外贸货源一站式服务，零成本、零库存、零风险！
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </@shiro.notAuthenticated>
                    </ul>
                    <#--<div class="advTip"><img src="../images/advTip.jpg"/></div>-->
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <script type="text/javascript">
            if ($(window).width() < 640) {
                function autoScroll(obj) {
                    $(obj).find("ul").animate({
                        marginTop: "-39px"
                    }, 500, function () {
                        $(this).css({
                            marginTop: "0px"
                        }).find("li:first").appendTo(this);
                    })
                }

                $(function () {
                    setInterval('autoScroll(".demo")', 3000);
                })
            }
        </script>
    </div>

    <div class="shopMainbg">
        <div class="shopMain" id="shopmain">
            <!-- 栏目介绍 -->
            <div class="am-g am-g-fixed recommendation">
                <div class=" am-u-sm-6 am-u-lg-6 " style="height:145px;">
                    <div class="marqueenTwo ">
						<span class="marqueen-title">
							<i class="am-icon-volume-up am-icon-fw"></i>我要供货
							<em class="am-icon-angle-double-right"></em>
						</span>
                        <div class="demo">
                            <p style="color: #888;">Global  Shopping一款跨国际购物的平台，它面向供应商、借卖商。在这里，供应商可以在平台申请入驻，后台管理进行认证审核，通过平台认证并入驻的供应商，可以在平台管理维护发布自己的供应商品</p>
                        </div>
                    </div>
                </div>
                <div class="am-u-sm-6 am-u-lg-6 ">
                    <div class="marqueenTwo">
						<span class="marqueen-title">
							<i class="am-icon-volume-up am-icon-fw"></i>我要分销
							<em class="am-icon-angle-double-right"></em>
						</span>
                        <div class="demo">
                            <p style="color: #888;">借卖商可以在实际生产环境中入驻平台的借卖商需要在Amazon或ebay拥有自己的店铺，借卖商可以通过平台浏览选择供应商发布的商品，并推送到借卖商在Amazon或ebay的网店进行销售，同时借卖商可以拉取网店销售订单到交易平台，对借卖的商品订单进行跟踪和管理。</p>
                        </div>
                    </div>
                </div>

            </div>

            <div class="am-container ">
                <div class="shopTitle ">
                    <h4>手机</h4>
                    <h3>爱机，为发烧而生</h3>
                    <div class="today-brands ">
                        <a href="/item/search.html?q=三星">三星</a>
                        <a href="/item/search.html?q=老人机">老人机</a>
                    </div>
                    <span class="more ">
                    <a class="more-link " href="/item/search.html?q=手机">更多手机</a>
                        </span>
                </div>
            </div>
            <div class="am-g am-g-fixed flood method3 ">
                <ul class="am-thumbnails ">
                    <#list recommend_phones.itemList as item>
                        <li>
                            <div class="list">
                                <a target="_blank" href="/item/${item.product_id}.html">
                                    <img src="${IMAGE_BASE_URL}${item.product_pic}" style="width:190px;height:190px;"/>
                                    <div class="pro-title"
                                         style="padding:0px 5px;margin:5px 0px;overflow:hidden;height:20px;line-height:20px;">${item.product_name}</div>
                                    <span class="e-price ">￥${item.product_price}</span>
                                </a>
                            </div>
                        </li>
                    </#list>
                </ul>
            </div>
            <#include "inc/footer.ftl">
        </div>
        <!--引导 -->
        <#assign index1 = "class='active'">

        <#include "inc/nav_cir.ftl">

        <script>
            window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
        </script>
        <script type="text/javascript " src="../basic/js/quick_links.js "></script>
</body>

</html>