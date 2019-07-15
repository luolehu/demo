<!--头 -->
<header>
    <div class="top">
        <!--顶部导航条 -->
        <div class="am-container header">
            <ul class="message-l">
                <li class="topMessage">
                    <div class="menu-hd">
                        <a href=""><i class="am-icon-map-marker am-icon-fw am-text-warning"></i><span>中国</span></a>
                    </div>
                </li>
            </ul>
            <ul class="message-r">
                <@shiro.notAuthenticated>
                    <li class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng">
                            <span class="am-text-warning">你好，请&nbsp;</span>
                            <a href="#" target="_top" class="border-none">登录</a>
                            <a href="#" target="_top" class="border-none">免费注册</a>
                        </div>
                    </li>
                </@shiro.notAuthenticated>
                <@shiro.authenticated>
                    <li class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng">
                            <span class="am-text-warning">HI~,</span>
                            <a href="/user/index.html" target="_top"
                               class="border-none"><@shiro.principal property="username"/></a>
                            <a href="/logout.html" class="border-none">退出</a>
                        </div>
                    </li>
                </@shiro.authenticated>
                <li class="topMessage favorite">
                    <div class="menu-hd"><a href="../user/order.html" target="_top">我的订单</a></div>
                </li>

                <li class="topMessage favorite">
                    <div class="menu-hd"><a href="../deposit.html" target="_top">充值</a></div>
                </li>
                <li class="topMessage favorite">
                    <div class="menu-hd"><a href="../cashdraw.html" target="_top">提现</a></div>
                </li>

                <li class="topMessage favorite">
                    <div class="menu-hd"><a href="../user/index.html" target="_top">个人中心</a></div>
                </li>

            </ul>
        </div>

    </div>
    <article>
        <div class="mt-logo">

            <!--悬浮搜索框-->

            <div class="nav white">
                <div class="logoBig">
                    <li><a href="./index.html"><img src="../images/logobig.png"/></a></li>
                </div>

                <div class="search-bar pr am-fr">
                    <form>
                        <input id="searchInput" name="q" type="text" placeholder="搜索"
                               autocomplete="off">
                        <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="button"
                               onclick="search()">
                    </form>
                </div>
            </div>

            <div class="clear"></div>
        </div>
        </div>
    </article>
</header>

<div class="top-nav-table">
    <div class="nav-table">
        <div class="long-title"><span class="all-goods">全部分类</span></div>
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
    </div>
</div>

<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script>
    function search() {
        var q = $("#searchInput").val();
        window.location = "/item/search.html?q=" + q;
    }
</script>