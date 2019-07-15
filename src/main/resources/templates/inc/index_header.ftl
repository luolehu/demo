<link href="../css/personal.css" rel="stylesheet" type="text/css">
<style>
    .favorite .menu-hd{margin-top:12px;}
</style>
<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script>
    function search() {
        var q = $("#searchInput").val();
        window.location = "/item/search.html?q=" + q;
    }
</script>
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
                            <a href="../login.html" target="_top" class="border-none">登录</a>
                            <a href="../register.html" target="_top" class="border-none">免费注册</a>
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
    <div class="hmtop">
        <!--顶部导航条 -->

        <!--悬浮搜索框-->

        <div class="nav white ">
            <div class="logoBig">
                <img src="../images/logo.png" />
            </div>
            <!-- <div class="logoBig">
                    <li><img src="../images/logobig.png" /></li>
                </div> -->

            <div class="search-bar pr">
                <a name="index_none_header_sysc" href="#"></a>
                <form>
                    <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
                    <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
                </form>
            </div>
        </div>

        <div class="clear"></div>
    </div>
</header>