<aside class="menu">
    <ul>
        <li class="person active">
            <a href="index.html"><i class="am-icon-user"></i>个人中心</a>
        </li>
        <li class="person">
            <p><i class="am-icon-newspaper-o"></i>我的账户</p>
            <ul>
                <li><a href="information.html">个人资料</a></li>
                <li><a href="safety.html">安全设置</a></li>
                <@shiro.hasRole name="normal">
                <li><a href="identification.html">会员申请</a></li>
                </@shiro.hasRole>
            </ul>
        </li>
        <@shiro.hasRole name="company">
            <li class="person">
                <p><i class="am-icon-balance-scale"></i>我的产品</p>
                <ul>
                    <li><a href="manager_product.html">产品管理</a></li>
                    <li><a href="stock.html">库存管理</a></li>
                </ul>
            </li>
        </@shiro.hasRole>
        <@shiro.hasRole name="seller">
            <li class="person">
                <p><i class="am-icon-balance-scale"></i>我的借卖篮</p>
                <ul>
                    <li><a href="seller_cart.html">借卖篮管理</a></li>
                    <li><a href="push_item.html">已推送列表</a></li>
                </ul>
            </li>
        </@shiro.hasRole>


        <@shiro.hasRole name="company">
            <li class="person">
                <p><i class="am-icon-balance-scale"></i>我的交易</p>
                <ul>
                    <li><a href="order.html">订单管理</a></li>
                </ul>
            </li>
        </@shiro.hasRole>
        <@shiro.hasRole name="seller">
            <li class="person">
                <p><i class="am-icon-balance-scale"></i>我的交易</p>
                <ul>
                    <li><a href="draw_order.html">订单拉取</a></li>
                    <li><a href="order.html">订单管理</a></li>
                </ul>
            </li>
        </@shiro.hasRole>


        <@shiro.hasRole name="company">
            <li class="person">
                <p><i class="am-icon-dollar"></i>我的钱包</p>
                <ul>
                    <li><a href="cardlist.html">银行卡管理</a></li>
                    <li><a href="../deposit.html">充值</a></li>
                    <li><a href="../cashdraw.html">提现 </a></li>
                </ul>
            </li>
        </@shiro.hasRole>
        <@shiro.hasRole name="seller">
            <li class="person">
                <p><i class="am-icon-dollar"></i>我的钱包</p>
                <ul>
                    <li><a href="cardlist.html">银行卡管理</a></li>
                    <li><a href="../deposit.html">充值</a></li>
                    <li><a href="../cashdraw.html">提现 </a></li>
                </ul>
            </li>
        </@shiro.hasRole>
    </ul>

</aside>