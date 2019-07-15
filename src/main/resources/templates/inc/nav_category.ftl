<link href="../css/nav_category.css" rel="stylesheet" type="text/css"/>

<div>
    <!-- 请在这里设置高度为自动，这样将不会成为一块区域，而往下挤 -->
    <div class="slideall" style="height:auto;">
        <div id="category" class="long-title"><span class="all-goods">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="/index.html">首页</a></li>
                <li class="qc"><a href="/item/search.html?q=new">最新商品</a></li>
                <li class="qc"><a href="/item/search.html?q=timelimit">限时抢购</a></li>
                <li class="qc"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=735999615&site=qq&menu=yes">在线客服</a></li>
                <li class="qc last"><a href="/suggest.html">意见反馈</a></li>
            </ul>
            <a href="/user/cardlist.html">
                <div class="nav-extra">
                    <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的钱包
                    <i class="am-icon-angle-right" style="padding-left: 10px;"></i>
                </div>
            </a>
        </div>
        <script type="text/javascript">
            //分类导航显示
            $("#category").hover(function () {
                $("#nav").css("display", "block");
            }, function () {
                $("#nav").css("display", "none");
            });
        </script>
    </div>
</div>