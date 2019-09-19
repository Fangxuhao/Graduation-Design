<%--
  Created by IntelliJ IDEA.
  User: FXH
  Date: 2019/9/9
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>装机大师-电脑配置专业研究网站！</title>
</head>
<body id="page_articles" class="articles_page"><div id="cboxOverlay" style="display: none;"></div><div id="colorbox" style="padding-bottom: 42px; padding-right: 42px; display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxLoadedContent" class=" " style="width: 0px; height: 0px;"></div><div id="cboxLoadingOverlay" class=" "></div><div id="cboxLoadingGraphic" class=" "></div><div id="cboxTitle" class=" "></div><div id="cboxCurrent" class=" "></div><div id="cboxSlideshow" class=" "></div><div id="cboxNext" class=" "></div><div id="cboxPrevious" class=" "></div><div id="cboxClose" class=" "></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position:absolute; top:0; left:0; width:9999px; height:0;"></div></div>
<div id="top">
  <div class="container">
    <div class="user_area" id="user_area"><em>欢迎您来到极速空间！</em><a href="http://www.365pcbuy.com/user.php?act=register" class="register">免费注册</a>
      <a href="http://www.365pcbuy.com/user.php?act=login" class="login quick_login">登录</a>
    </div>
    <div class="small_nav top_nav_wrapper">
      <div class="nav">
        <ul class="level_1">
          <li class="level_1 first">
            <a href="http://www.365pcbuy.com/user.php" class="level_1"><strong><span>用户中心</span></strong></a>
          </li>
          <li class="level_1">
            <a href="http://www.365pcbuy.com/flow.php" class="level_1"><strong><span>查看购物车</span></strong></a>
          </li>
          <li class="level_1">
            <a href="http://www.365pcbuy.com/article_cat-11.html" class="level_1"><strong><span>小虫榜单</span></strong></a>
          </li>
          <li class="level_1">
            <a href="http://www.365pcbuy.com/articles.html" class="level_1"><strong><span>硬件学堂</span></strong></a>
          </li>
          <li class="level_1">
            <a href="http://www.365pcbuy.com/common-ask.html" class="level_1" rel="external"><strong><span>电脑配置问答</span></strong></a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div id="header">
  <div class="container">
    <p id="logo"><a href="http://www.365pcbuy.com/" title="极速空间"><img src="./文章_极速空间-电脑配置专业研究网站！_files/logo.gif" alt="极速空间"></a></p>
    <div class="header_bar">
      <div class="header_bar_left">&nbsp;</div>
      <div class="header_bar_right">&nbsp;</div>
      <div class="cart" id="cart"><p class="cart_info"><a href="http://www.365pcbuy.com/flow.php" title="查看购物车">您的购物车有<em>0</em>件商品</a></p>
        <div class="list_wrapper">
          <div class="list">
            <em class="list_arrow">↑</em>
            <div class="loader">&nbsp;</div>
            <p class="cart_empty">您的购物车中没有商品</p>
            <a href="javascript:closeCart();" class="close button"><span>关闭</span></a>
          </div>
        </div></div>
      <div class="bright_search">
        <form method="get" action="http://www.365pcbuy.com/search.php" id="search">
          <input type="text" name="keywords" value="" tabindex="1" class="keyword" id="keyword" original-title="请输入您想要的商品">
          <input type="submit" value="搜索" class="submit">
          <p class="advanced_search"><a href="http://www.365pcbuy.com/search.php?act=advanced_search">高级搜索</a></p>
        </form>
      </div>
      <div class="nav_wrapper">
        <div class="nav">
          <ul class="level_1">
            <li class="level_1 first"><a href="http://www.365pcbuy.com/" class="level_1"><strong><span>首页</span></strong></a></li>
            <li class="level_1">
              <a href="http://www.365pcbuy.com/diy.php" class="level_1"><strong><span>自选装机</span></strong></a>
            </li>
            <li class="level_1">
              <a href="http://www.365pcbuy.com/category-127-b0.html" class="level_1"><strong><span>台式电脑主机</span></strong></a>
            </li>
            <li class="level_1">
              <a href="http://www.365pcbuy.com/article_cat-13.html" class="level_1"><strong><span>精选套机</span></strong></a>
            </li>
            <li class="level_1">
              <a href="http://www.365pcbuy.com/article_cat-16.html" class="level_1"><strong><span>笔记本电脑</span></strong></a>
            </li>
          </ul>
        </div>
      </div>
      <div class="all_cat_wrapper">
        <a href="http://www.365pcbuy.com/catalog.php" class="all_cat">商品分类</a>
        <div class="all_category box">
          <div class="bd hide_extra">
            <ul class="level_1 clearfix">
              <li class="level_1 first">
                <a href="http://www.365pcbuy.com/category-127-b0.html" class="level_1"><span>台式电脑主机</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-128-b0.html" class="level_2"><span>intel台式组装电脑主机</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-42-b0.html" class="level_2"><span>AMD台式组装电脑主机</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-8-b0.html" class="level_1"><span>CPU</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-9-b0.html" class="level_2"><span>Intel CPU</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-10-b0.html" class="level_2"><span>AMD CPU</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-11-b0.html" class="level_1"><span>主板</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-12-b0.html" class="level_2"><span>Intel平台</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-13-b0.html" class="level_2"><span>AMD平台</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-14-b0.html" class="level_1"><span>内存</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-15-b0.html" class="level_2"><span>台式机内存</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-16-b0.html" class="level_2"><span>笔记本内存</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-17-b0.html" class="level_1"><span>硬盘</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-18-b0.html" class="level_2"><span>机械硬盘</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-19-b0.html" class="level_2"><span>固态硬盘</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-20-b0.html" class="level_1"><span>显卡</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-21-b0.html" class="level_2"><span>NVIDIA显卡</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-22-b0.html" class="level_2"><span>ATI显卡</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-23-b0.html" class="level_1"><span>驱动器</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-24-b0.html" class="level_2"><span>DVD光驱</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-25-b0.html" class="level_2"><span>DVD刻录机</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-30-b0.html" class="level_1"><span>机箱电源</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-31-b0.html" class="level_2"><span>主机箱</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-32-b0.html" class="level_2"><span>电源</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-27-b0.html" class="level_1"><span>显示器</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-29-b0.html" class="level_2"><span>液晶显示器</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-34-b0.html" class="level_1"><span>键盘鼠标</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-36-b0.html" class="level_2"><span>键盘</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-37-b0.html" class="level_2"><span>鼠标</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-35-b0.html" class="level_2"><span>键鼠套装</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-39-b0.html" class="level_1"><span>音箱耳机</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-40-b0.html" class="level_2"><span>音箱</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-41-b0.html" class="level_2"><span>耳机-麦克风</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
              <li class="level_1">
                <a href="http://www.365pcbuy.com/category-91-b0.html" class="level_1"><span>外设及网络产品</span></a>
                <div class="sub_cat_lv1">
                  <div class="inner_lv1">
                    <ul class="level_2 clearfix">
                      <li class="level_2 clearfix level_2_first">
                        <a href="http://www.365pcbuy.com/category-88-b0.html" class="level_2"><span>移动硬盘</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-135-b0.html" class="level_2"><span>移动硬盘盒/线缆</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-90-b0.html" class="level_2"><span>U盘</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-126-b0.html" class="level_2"><span>机箱风扇</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-58-b0.html" class="level_2"><span>CPU显卡散热器</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-131-b0.html" class="level_2"><span>路由器-无线网卡</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-64-b0.html" class="level_2"><span>摄像头</span></a>
                      </li>
                      <li class="level_2 clearfix">
                        <a href="http://www.365pcbuy.com/category-129-b0.html" class="level_2"><span>鼠标垫</span></a>
                      </li>
                    </ul>
                    <div class="level_2_extra">
                    </div>
                  </div>
                </div>
              </li>
            </ul>
            <p><a href="http://www.365pcbuy.com/catalog.php" class="all">全部商品分类</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="content"><div class="container">
  <div class="col_main">
    <div class="articles_notice notice_box"><a href="http://www.365pcbuy.com/article-30.html">重要通知：本站座机号码变更！</a></div>
    <div class="articles_featured clearfix">
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-233.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1567671917616279051.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-233.html" target="_blank">再探锐龙3700X的主板搭配：比武招亲，毛头小伙和中产男谁赢芳心</a></h3>
        <p class="content">前言&nbsp;
          远而望之，皎若太阳升朝霞；迫而察之，灼若芙蕖出渌波......锐龙3700X大美人要比武招亲，这消息如同一枚核弹，冲击波瞬间覆盖了整个城市。X399起了个大早，准备去秀一波四通道功夫，刚出了大门就遇到X570。
          X399：“听说A320那小子和你比了一场，还输了？这不可能啊！”
          X570长叹一口气：“哎！出了点岔子，实际也算个平手。”
          X399：“那怎么判你负？”
          X570：“你有所不知，按规则，功夫一样的情况，就比颜值、身材、比潜力、比品德。”
          X399：“那你哪点不如他？”
          X570无奈地说：“哥，这事说来有点霉，上周三晚上在街口玩漂移，撞坏了个...</p> <span class="time">09-05</span>
      </div>
      <div class="item left">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-232.html" target="_blank">老U有点妖，价在天上飘，精选配置实现电脑免费升级</a></h3>
        <span class="time">09-03</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-143.html" target="_blank">同为6核12线程，R5-3600和i7-8700谁的肌肉更发达？</a></h3>
        <span class="time">08-20</span>
      </div>
      <div class="item left">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-228.html" target="_blank">可怜虫竟然化身为龙！AMD NAVI显卡相当于第几代N卡？</a></h3>
        <span class="time">07-14</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-226.html" target="_blank">“英雄"遇英雄就变成了狗熊，锐龙全军覆灭，抽丝剥茧找原因</a></h3>
        <span class="time">03-01</span>
      </div>
      <div class="item left">
        <h3><span class="badge badge_6">6</span>
          <a href="http://www.365pcbuy.com/article-199.html" target="_blank">PBO和傻工人加班的故事：从热血澎湃到满心无奈只有2分钟的距离</a></h3>
        <span class="time">11-01</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_7">7</span>
          <a href="http://www.365pcbuy.com/article-219.html" target="_blank">赔了夫人又折兵（二）超过数量临界点，CPU核心越多越慢</a></h3>
        <span class="time">09-21</span>
      </div>
      <div class="item left">
        <h3><span class="badge badge_8">8</span>
          <a href="http://www.365pcbuy.com/article-169.html" target="_blank">绝壁四千尺，手抖恐闪失：高频内存再超频，探索内存性价比（intel核显平台）</a></h3>
        <span class="time">03-20</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_9">9</span>
          <a href="http://www.365pcbuy.com/article-171.html" target="_blank">单枪匹马入沙场，双剑合璧霸天下：探索双通道高频内存性价比（AMD独显平台）</a></h3>
        <span class="time">04-07</span>
      </div>
      <div class="item left">
        <h3><span class="badge badge_10">10</span>
          <a href="http://www.365pcbuy.com/article-334.html" target="_blank">Intel和AMD哪个好？春风得意马蹄缓，没想咸鱼把身翻</a></h3>
        <span class="time">11-14</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_11">11</span>
          <a href="http://www.365pcbuy.com/article-198.html" target="_blank">小白也能看懂锐龙高科技：戏说AMD锐龙七大武林绝学</a></h3>
        <span class="time">08-30</span>
      </div>
    </div>
    <div class="articles_cat left">
      <div class="header">
        <h2><a href="http://www.365pcbuy.com/article_cat-19.html">CPU</a></h2>
        <a href="http://www.365pcbuy.com/article_cat-19.html" class="more">更多»</a>
      </div>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-411.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536756331940101900.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-411.html" target="_blank">极速空间CPU天梯图2019（intel和AMD CPU性能排行）——跟小虫学电脑配置</a></h3>
        <span class="time">09-05</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-302.html" target="_blank">intel CPU 参数速查 对比表（第十代酷睿）</a></h3>
        <span class="time">09-01</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-143.html" target="_blank">同为6核12线程，R5-3600和i7-8700谁的肌肉更发达？</a></h3>
        <span class="time">08-20</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-230.html" target="_blank">苦尽甘来终成才,锐龙三代超越酷睿九代</a></h3>
        <span class="time">08-01</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-142.html" target="_blank">同为酷睿第十代，桌面版只能吃点残汤剩饭</a></h3>
        <span class="time">07-27</span>
      </div>
    </div>
    <div class="articles_cat">
      <div class="header">
        <h2><a href="http://www.365pcbuy.com/article_cat-20.html">主板</a></h2>
        <a href="http://www.365pcbuy.com/article_cat-20.html" class="more">更多»</a>
      </div>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-233.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1567671917616279051.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-233.html" target="_blank">再探锐龙3700X的主板搭配：比武招亲，毛头小伙和中产男谁赢芳心</a></h3>
        <span class="time">09-05</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-144.html" target="_blank">鲜花插牛粪，好U配渣板，R7-3700X+A320M主板会有瓶颈吗</a></h3>
        <span class="time">08-26</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-203.html" target="_blank">锐龙三代莅临，X570和X470有什么区别？各品牌A320M、B450M能否迎战？</a></h3>
        <span class="time">07-07</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-378.html" target="_blank">热门主板排名（CPU主板性价比套装 一线精选 2019排行榜）</a></h3>
        <span class="time">06-24</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-195.html" target="_blank">乱花渐欲迷人眼，B350和B450怎么选</a></h3>
        <span class="time">11-02</span>
      </div>
    </div>
    <div class="articles_cat left">
      <div class="header">
        <h2><a href="http://www.365pcbuy.com/article_cat-21.html">显卡</a></h2>
        <a href="http://www.365pcbuy.com/article_cat-21.html" class="more">更多»</a>
      </div>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-389.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536930256632242504.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-389.html" target="_blank">十大高性价比游戏显卡排行（2019年9月排行榜）</a></h3>
        <span class="time">08-31</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-229.html" target="_blank">基因突变，RX 5700大战RTX 2060 SUPER</a></h3>
        <span class="time">07-24</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-398.html" target="_blank">极速空间显卡天梯图 （2019台式显卡和笔记本显卡性能排行）——跟小虫学电脑配置</a></h3>
        <span class="time">07-17</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-228.html" target="_blank">可怜虫竟然化身为龙！AMD NAVI显卡相当于第几代N卡？</a></h3>
        <span class="time">07-14</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-298.html" target="_blank">极速空间显卡天梯图（4.01版含图形卡）</a></h3>
        <span class="time">07-03</span>
      </div>
    </div>
    <div class="articles_cat">
      <div class="header">
        <h2><a href="http://www.365pcbuy.com/article_cat-25.html">内存硬盘</a></h2>
        <a href="http://www.365pcbuy.com/article_cat-25.html" class="more">更多»</a>
      </div>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-167.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1555635697348549774.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-167.html" target="_blank">谁才是内存的老大：内存的频率谁说了算，是CPU还是主板？ </a></h3>
        <span class="time">04-16</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-171.html" target="_blank">单枪匹马入沙场，双剑合璧霸天下：探索双通道高频内存性价比（AMD独显平台）</a></h3>
        <span class="time">04-07</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-405.html" target="_blank">十大高性价比固态硬盘（小虫2019年4月排行） 附问答：120GB固态硬盘够用吗</a></h3>
        <span class="time">04-01</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-427.html" target="_blank">固态硬盘什么牌子好（30个实力品牌同场较量）</a></h3>
        <span class="time">04-01</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-170.html" target="_blank">一阵表演猛如虎，一看门票收入2元5 ：探索双通道高频内存性价比（intel独显平台）</a></h3>
        <span class="time">03-28</span>
      </div>
    </div>
    <div class="articles_cat left">
      <div class="header">
        <h2><a href="http://www.365pcbuy.com/article_cat-23.html">机箱电源其它</a></h2>
        <a href="http://www.365pcbuy.com/article_cat-23.html" class="more">更多»</a>
      </div>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-157.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1560419355321733935.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-157.html" target="_blank">鼓粉分离成本低？买打印机/一体机先做道四选一的题目 </a></h3>
        <span class="time">06-20</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-163.html" target="_blank">显卡功耗名称的旧爱新宠：TDP、TBP和GCP（电脑电源功率估算之懒人公式）</a></h3>
        <span class="time">05-24</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-159.html" target="_blank">要想顺利保，验伤少不了（一条花4000元买的经验）</a></h3>
        <span class="time">04-21</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-176.html" target="_blank">新春笑一笑，2019运气就会到（买电脑笑话四则）</a></h3>
        <span class="time">02-15</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-362.html" target="_blank">2019 十佳电脑电源（一线性价比精选）</a></h3>
        <span class="time">07-30</span>
      </div>
    </div>
    <div class="articles_cat">
      <div class="header">
        <h2><a href="http://www.365pcbuy.com/article_cat-18.html">组装电脑</a></h2>
        <a href="http://www.365pcbuy.com/article_cat-18.html" class="more">更多»</a>
      </div>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-432.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536641934534664894.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-432.html" target="_blank">十大高性价比游戏电脑主机（小虫精选游戏电脑配置2019年9月排行）</a></h3>
        <span class="time">09-09</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-232.html" target="_blank">老U有点妖，价在天上飘，精选配置实现电脑免费升级</a></h3>
        <span class="time">09-03</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-165.html" target="_blank">电脑在质保期出现故障，运气到底有好差？返修概率漫谈</a></h3>
        <span class="time">05-30</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-434.html" target="_blank">四款吃鸡品牌台式机（极速空间2019年5月排行）</a></h3>
        <span class="time">05-22</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-186.html" target="_blank">老王买卤蛋的故事-几百元的主机超值与否</a></h3>
        <span class="time">01-10</span>
      </div>
    </div>
    <div class="articles_cat left">
      <div class="header">
        <h2><a href="http://www.365pcbuy.com/article_cat-22.html">显示器</a></h2>
        <a href="http://www.365pcbuy.com/article_cat-22.html" class="more">更多»</a>
      </div>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-418.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1537886070936903614.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-418.html" target="_blank">十大高性价比电竞显示器（2019年8月小虫排行榜）</a></h3>
        <span class="time">08-03</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-421.html" target="_blank">2019十大高性价比显示器（2019年8月小虫排行榜）</a></h3>
        <span class="time">08-03</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-227.html" target="_blank">餐厅内发生的故事：良心发现还是老谋深算</a></h3>
        <span class="time">03-12</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-422.html" target="_blank">电脑显示器什么牌子好</a></h3>
        <span class="time">12-02</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-197.html" target="_blank">两个词语形容144hz和60hz显示器的区别</a></h3>
        <span class="time">08-27</span>
      </div>
    </div>
    <div class="articles_cat">
      <div class="header">
        <h2><a href="http://www.365pcbuy.com/article_cat-16.html">笔记本电脑</a></h2>
        <a href="http://www.365pcbuy.com/article_cat-16.html" class="more">更多»</a>
      </div>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-439.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536648608782679285.jpg"></a> <h3><span class="badge badge_1">1</span>
        <a href="http://www.365pcbuy.com/article-439.html" target="_blank">十大高性价比笔记本电脑（2019年9月小虫排行榜）</a></h3>
        <span class="time">09-10</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-353.html" target="_blank">十大轻薄笔记本（2019年9月办公游戏轻薄本小虫排行榜）</a></h3>
        <span class="time">09-10</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-352.html" target="_blank">十大高性价比游戏本（小虫2019年9月游戏本排行榜）</a></h3>
        <span class="time">09-08</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-349.html" target="_blank">十大高端游戏本（2019年8月高配置笔记本小虫排行榜 ）</a></h3>
        <span class="time">08-04</span>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-354.html" target="_blank">笔记本电脑十大精品（高端轻薄本和高端游戏本）</a></h3>
        <span class="time">06-22</span>
      </div>
    </div>
  </div>
  <div class="col_sub">
    <form action="http://www.365pcbuy.com/article_cat.php" name="search_form" method="get" class="article_search">
      <input type="text" name="keywords" value="" class="keyword">
      <input type="submit" value="文章搜索" class="submit btn_s3">
    </form>
    <div class="articles_new">
      <h2>最近更新文章</h2>
      <div class="item first">
        <h3><span class="badge badge_1">1</span>
          <a href="http://www.365pcbuy.com/article-439.html" target="_blank">十大高性价比笔记本电脑（2019年9月小虫排行榜）</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_2">2</span>
          <a href="http://www.365pcbuy.com/article-353.html" target="_blank">十大轻薄笔记本（2019年9月办公游戏轻薄本小虫排行榜）</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_3">3</span>
          <a href="http://www.365pcbuy.com/article-432.html" target="_blank">十大高性价比游戏电脑主机（小虫精选游戏电脑配置2019年9月排行）</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_4">4</span>
          <a href="http://www.365pcbuy.com/article-352.html" target="_blank">十大高性价比游戏本（小虫2019年9月游戏本排行榜）</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_5">5</span>
          <a href="http://www.365pcbuy.com/article-411.html" target="_blank">极速空间CPU天梯图2019（intel和AMD CPU性能排行）——跟小虫学电脑配置</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_6">6</span>
          <a href="http://www.365pcbuy.com/article-233.html" target="_blank">再探锐龙3700X的主板搭配：比武招亲，毛头小伙和中产男谁赢芳心</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_7">7</span>
          <a href="http://www.365pcbuy.com/article-232.html" target="_blank">老U有点妖，价在天上飘，精选配置实现电脑免费升级</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_8">8</span>
          <a href="http://www.365pcbuy.com/article-302.html" target="_blank">intel CPU 参数速查 对比表（第十代酷睿）</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_9">9</span>
          <a href="http://www.365pcbuy.com/article-389.html" target="_blank">十大高性价比游戏显卡排行（2019年9月排行榜）</a></h3>
      </div>
      <div class="item">
        <h3><span class="badge badge_10">10</span>
          <a href="http://www.365pcbuy.com/article-144.html" target="_blank">鲜花插牛粪，好U配渣板，R7-3700X+A320M主板会有瓶颈吗</a></h3>
      </div>
    </div>
    <div class="articles_hot">
      <h2>热门文章</h2>
      <div class="item first">
        <a href="http://www.365pcbuy.com/article-411.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536756331940101900.jpg"></a>
        <h3><span class="badge badge_1">1</span><a href="http://www.365pcbuy.com/article-411.html" target="_blank">极速空间CPU天梯图2019（intel和AMD CPU性能排行）——跟小虫学电脑配置</a></h3>
        <span class="time">09-05</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-398.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536756405004445652.jpg"></a>
        <h3><span class="badge badge_2">2</span><a href="http://www.365pcbuy.com/article-398.html" target="_blank">极速空间显卡天梯图 （2019台式显卡和笔记本显卡性能排行）——跟小虫学电脑配置</a></h3>
        <span class="time">07-17</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-439.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536648608782679285.jpg"></a>
        <h3><span class="badge badge_3">3</span><a href="http://www.365pcbuy.com/article-439.html" target="_blank">十大高性价比笔记本电脑（2019年9月小虫排行榜）</a></h3>
        <span class="time">09-10</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-352.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1537089093904591527.jpg"></a>
        <h3><span class="badge badge_4">4</span><a href="http://www.365pcbuy.com/article-352.html" target="_blank">十大高性价比游戏本（小虫2019年9月游戏本排行榜）</a></h3>
        <span class="time">09-08</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-432.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536641934534664894.jpg"></a>
        <h3><span class="badge badge_5">5</span><a href="http://www.365pcbuy.com/article-432.html" target="_blank">十大高性价比游戏电脑主机（小虫精选游戏电脑配置2019年9月排行）</a></h3>
        <span class="time">09-09</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-409.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1541069294349747797.jpg"></a>
        <h3><span class="badge badge_6">6</span><a href="http://www.365pcbuy.com/article-409.html" target="_blank">极速空间笔记本CPU天梯图2019（笔记本CPU性能排行）</a></h3>
        <span class="time">06-01</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-344.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1541315266197717242.jpg"></a>
        <h3><span class="badge badge_7">7</span><a href="http://www.365pcbuy.com/article-344.html" target="_blank">饥望图灵眼欲穿，遥遥无期怎么办：二手显卡性价比型号选购指南</a></h3>
        <span class="time">11-21</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-353.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1537087356552820803.jpg"></a>
        <h3><span class="badge badge_8">8</span><a href="http://www.365pcbuy.com/article-353.html" target="_blank">十大轻薄笔记本（2019年9月办公游戏轻薄本小虫排行榜）</a></h3>
        <span class="time">09-10</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-421.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1541058095730549890.jpg"></a>
        <h3><span class="badge badge_9">9</span><a href="http://www.365pcbuy.com/article-421.html" target="_blank">2019十大高性价比显示器（2019年8月小虫排行榜）</a></h3>
        <span class="time">08-03</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-389.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536930256632242504.jpg"></a>
        <h3><span class="badge badge_10">10</span><a href="http://www.365pcbuy.com/article-389.html" target="_blank">十大高性价比游戏显卡排行（2019年9月排行榜）</a></h3>
        <span class="time">08-31</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-197.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1545469129021593571.jpg"></a>
        <h3><span class="badge badge_11">11</span><a href="http://www.365pcbuy.com/article-197.html" target="_blank">两个词语形容144hz和60hz显示器的区别</a></h3>
        <span class="time">08-27</span>
      </div>
      <div class="item">
        <a href="http://www.365pcbuy.com/article-405.html" class="image"><img src="./文章_极速空间-电脑配置专业研究网站！_files/1536915731678384722.jpg"></a>
        <h3><span class="badge badge_12">12</span><a href="http://www.365pcbuy.com/article-405.html" target="_blank">十大高性价比固态硬盘（小虫2019年4月排行） 附问答：120GB固态硬盘够用吗</a></h3>
        <span class="time">04-01</span>
      </div>
    </div>
  </div>
</div></div>
<div id="footer2">
  <div class="container">
    <div class="box thin_box full_box">
      <div class="hd"><h3></h3><div class="extra"></div></div>
      <div class="bd">
        <div class="foot">
          <div class="foot_bk1" style="margin-bottom:5px;clear:both;">
            <div class="float6 foot_line_right"><b>CPU—选购</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article_cat-19.html" target="_blank">CPU文章汇总</a>
                </li><li><a class="foota" href="http://www.365pcbuy.com/article-411.html" target="_blank">CPU天梯图</a>
              </li><li>CPU参数速查&nbsp;<a class="foota" href="http://www.365pcbuy.com/article-420.html" target="_blank">Intel</a>
                &nbsp;<a class="foota" href="http://www.365pcbuy.com/article-419.html" target="_blank">AMD </a>
              </li></ul></div>
            <div class="float6 foot_line_right "><b>主板—选购</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article_cat-20.html" target="_blank">主板文章汇总</a>
                </li><li>主板参数速查&nbsp;<a class="foota" href="http://www.365pcbuy.com/article-407.html" target="_blank">Intel</a>
                &nbsp;<a class="foota" href="http://www.365pcbuy.com/article-408.html" target="_blank">AMD </a>
              </li></ul></div>
            <div class="float6 foot_line_right"><b>显卡—选购</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article_cat-21.html" target="_blank">显卡文章汇总</a>
                </li><li><a class="foota" href="http://www.365pcbuy.com/article-398.html" target="_blank">显卡天梯图</a>
              </li><li>显卡参数速查&nbsp;<a class="foota" href="http://www.365pcbuy.com/article-404.html" target="_blank">N卡</a>
                &nbsp;<a class="foota" href="http://www.365pcbuy.com/article-403.html" target="_blank">A卡</a>
              </li></ul></div>
            <div class="float6 foot_line_right"><b>固态硬盘—选购</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article-406.html" target="_blank">固态硬盘什么牌子好</a>
                </li><li><a class="foota" href="http://www.365pcbuy.com/article-405.html" target="_blank">固态硬十大高性价比型号</a>
              </li></ul></div>
            <div class="float6 foot_line_right"><b>显示器—选购 </b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article_cat-22.html" target="_blank">显示器文章汇总</a>
                </li><li><a class="foota" href="http://www.365pcbuy.com/article-422.html" target="_blank">显示什么牌子好</a>
              </li><li><a class="foota" href="http://www.365pcbuy.com/article-421.html" target="_blank">显示器排行榜</a>
              </li></ul></div>
            <div class="float6"><b>吃鸡电脑</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article-434.html" target="_blank">吃鸡电脑8大品牌主机</a>
                </li><li><a class="foota" href="http://www.365pcbuy.com/article-432.html" target="_blank">吃鸡电脑12款组装机</a>
              </li><li><a class="foota" href="http://www.365pcbuy.com/article-431.html" target="_blank">京东天猫组装机如何选</a>
              </li></ul></div>
            <div style="margin:0 auto;border-top:1px dashed #ccc; clear:both;"></div></div>
          <div class="foot_bk1" style="margin-bottom:5px;clear:both;">
            <div class="float6 foot_line_right"><b>购买向导</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article-8.html" target="_blank">关于我们</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-9.html" target="_blank">购买流程</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-10.html" target="_blank">客户必读</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-11.html" target="_blank">装机指南</a> </li>
              </ul>
            </div>
            <div class="float6 foot_line_right "><b>如何付款</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article-16.html" target="_blank">现场支付</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-14.html" target="_blank">银行转帐</a></li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-13.html" target="_blank">网上支付</a> </li>
              </ul></div>
            <div class="float6 foot_line_right"><b><a href="http://www.365pcbuy.com/article-94.html">配送方式</a></b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article-18.html" target="_blank">门市自提</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-21.html" target="_blank">专人专递</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-17.html" target="_blank">知名快递</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-20.html" target="_blank">自取件快运</a> </li>
              </ul></div>
            <div class="float6 foot_line_right"><b>售前售后</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article-22.html" target="_blank">售前服务</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-23.html" target="_blank">售后服务</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-24.html" target="_blank">包换保修</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-25.html" target="_blank">上门服务</a> </li>
              </ul></div>
            <div class="float6 foot_line_right"><b>会员问答·diy</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article-29.html" target="_blank">新手问答</a></li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-27.html" target="_blank">评论积分</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article_cat-18.html" target="_blank">diy技术文章</a> </li>
              </ul>
            </div>
            <div class="float6"><b>笔记本电脑排行</b>
              <ul>
                <li><a class="foota" href="http://www.365pcbuy.com/article-438.html" target="_blank">笔记本电脑品牌排行</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-439.html" target="_blank">十大高性价比笔记本电脑</a></li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-352.html" target="_blank">十大吃鸡笔记本电脑</a> </li>
                <li><a class="foota" href="http://www.365pcbuy.com/article-353.html" target="_blank">十大轻薄笔记本电脑</a> </li>
              </ul></div>
            <div>
            </div>
            <div style="margin:0 auto;border-top:1px dashed #ccc; float: left; clear:both;">
              <div class="float6  foot_line_right "><img src="./文章_极速空间-电脑配置专业研究网站！_files/shiti.gif" alt="实体店装电脑">
              </div>
              <div class="float6  foot_line_right "><img src="./文章_极速空间-电脑配置专业研究网站！_files/zhen.gif" alt="全场正品超低价">
              </div>
              <div class="float6  foot_line_right "><img src="./文章_极速空间-电脑配置专业研究网站！_files/zhifubao.gif" alt="购物有保障">
              </div>
              <div class="float6  foot_line_right "><a href="http://www.365pcbuy.com/article-21.html"><img src="./文章_极速空间-电脑配置专业研究网站！_files/mianfeisonghuo1.gif" alt="组装电脑、台式电脑免费送货" border="0"></a></div>
              <div class="float6  foot_line_right "><a href="http://www.365pcbuy.com/article-15.html"><img src="./文章_极速空间-电脑配置专业研究网站！_files/shuaka.gif" alt="成都买电脑分期付款" border="0"></a></div>
              <div class="float6  foot_line_right "><img src="./文章_极速空间-电脑配置专业研究网站！_files/shouhou.gif" alt="优质售后服务让您满意">
              </div>
              <table width="1000" height="45" border="0" align="center" cellspacing="0">
                <tbody><tr>
                  <td width="12%">&nbsp;</td>
                  <td width="10%">&nbsp;</td>
                  <td width="22%">
                  </td>
                  <td width="22%"></td>
                  <td width="22%"></td>
                  <td width="10%"></td>
                </tr>
                </tbody></table>
              <table width="938" height="45" border="0" align="center" cellspacing="0">
                <tbody><tr>
                  <td width="22%" align="right">如客服QQ未应，代表门市部繁忙，
                    <br>
                    请稍等或来电咨询，谢谢！</td>
                  <td width="17%"> <a target="blank" href="https://wpa.qq.com/msgrd?V=1&amp;uin=2286057113&amp;Site=%E6%9E%81%E9%80%9F%E7%A9%BA%E9%97%B4;Menu=yes"><img border="0" src="./文章_极速空间-电脑配置专业研究网站！_files/pa" alt="极速空间_云">QQ2286057113:极速空间_云</a>
                  </td>
                  <td width="17%"> <a target="blank" href="https://wpa.qq.com/msgrd?V=1&amp;uin=1712714303&amp;Site=%E6%9E%81%E9%80%9F%E7%A9%BA%E9%97%B4_%E6%B5%B7;Menu=yes">
                    <img border="0" src="./文章_极速空间-电脑配置专业研究网站！_files/pa(1)" alt="极速空间_海">QQ1712714303:极速空间_海</a> </td>
                  <td width="15%"><a target="blank" href="https://wpa.qq.com/msgrd?V=1&amp;uin=644947909&amp;Site=%E6%9E%81%E9%80%9F%E7%A9%BA%E9%97%B4;Menu=yes"><img border="0" src="./文章_极速空间-电脑配置专业研究网站！_files/pa(2)" alt="自由之风">QQ644947909:自由之风</a></td>
                  <td width="15%"> <a target="blank" href="https://wpa.qq.com/msgrd?V=1&amp;uin=4021628&amp;Site=%E6%9E%81%E9%80%9F%E7%A9%BA%E9%97%B4;Menu=yes"><img border="0" src="./文章_极速空间-电脑配置专业研究网站！_files/pa(3)" alt="极速空间_阳光">QQ4021628:极速空间_阳光</a></td>
                  <td width="16%">&nbsp;</td>
                </tr>
                </tbody></table>

            </div>
            <div style="clear: both"></div></div>
          <div class="foot_c">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td width="35%" rowspan="2"><a href="http://www.365pcbuy.com/index.php"><img src="./文章_极速空间-电脑配置专业研究网站！_files/logo.gif" alt="成都电脑网上超市" name="成都电脑网上超市" border="0" id="成都电脑网上超市"></a></td>
                <td width="58%">
                  <a href="http://www.365pcbuy.com/article-5.html">公司简介</a>
                  |
                  <a href="http://www.365pcbuy.com/article-4.html">联系我们</a>
                  |
                  <a href="http://www.365pcbuy.com/article-7.html">版权声明</a>
                  |
                  <a href="http://365pc.taobao.com/" target="_blank">极速空间淘宝店</a>
                  |
                  <a href="http://q.365pcbuy.com/">电脑配置免费问答区</a>
                </td>
              </tr>
              <tr>
                <td class="font_tx"><strong>实体店地址：</strong>成都市人民南路4段1号数码广场5楼D2号 <br>
                  <strong>乘车路线：</strong>10、12、16、19、27、27路专线、34、34路专线、45、72、78、99、118、300、504、904路公交车到“一环路南二（三）段站””或“省体育馆站”或“人民南路一环路口站”下
                  <br>
                  <b>Tel:</b> 028-85533109 </td>
              </tr>
              <tr>
                <td align="left" class="font_tx">　© 2019 极速空间&nbsp;版权所有&nbsp;&nbsp;<br> </td>
                <td align="right"> ICP备案证书号:<a href="http://www.miitbeian.gov.cn/" target="_blank">蜀ICP备05012298号</a><span style="width:300px;margin:0 auto; padding:20px 0;">
<img src="./文章_极速空间-电脑配置专业研究网站！_files/beian.png" width="20" height="20"> <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=51010702000032" style="display:inline-block;text-decoration:none;height:20px;line-height:20px;"><img src="http://www.365pcbuy.com/articles.html" style="float:left;"><p style="float:left;height:20px;line-height:20px;margin: 0px 0px 0px 5px; color:#939393;">川公网安备 51010702000032号</p></a>
</span>
                  <br>
                  极速空间网是成都电脑专业DIY网站，提供电脑配置、组装电脑、电脑装机等服务。。
                  <br>
                  <span class="font_tx">共执行 3 个查询，用时 0.023150 秒，在线 1669 人，Gzip 已启用，占用内存 4.924 MB</span>
                  <br></td>
              </tr>
              </tbody></table>
          </div>
        </div>

        <script type="text/javascript">
          var process_request = "正在处理您的请求...";
        </script>
        <script>
          var _hmt = _hmt || [];
          (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?3e682fced3e1dc00867261bc54be759d";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
          })();
        </script>
        <script src="./文章_极速空间-电脑配置专业研究网站！_files/z_stat.php" language="JavaScript"></script><script src="./文章_极速空间-电脑配置专业研究网站！_files/core.php" charset="utf-8" type="text/javascript"></script><a href="https://www.cnzz.com/stat/website.php?web_id=852837" target="_blank" title="站长统计">站长统计</a>
      </div>
    </div>
  </div>
</div><ins id="newBridge"><!-- target: nodeBoard --><ins class="nb-nodeboard-base nb-nodeboard-position-base nb-nodeboard-left-bottom nb-hide" id="nb_nodeboard"><ins class="nb-nodeboard-contain-base nb-nodeboard-contain"><ins class="nb-nodeboard-top nb-nodeboard-top-0"><ins class="nb-head-title">请您留言</ins><ins class="nb-nodeboard-close" id="nb_nodeboard_close" data-type="min"></ins></ins><form id="nb_nodeboard_form" autocomplete="off" class="nb-board-form" action="http://p.qiao.baidu.com/cps//bookmanage/saveBook.action?userId=23933755" method="post" accept-charset="utf-8"><ins id="nb_nodeboard_set" class="nb-nodeboard-set"><ins class="nb-nodeboard-content"><textarea id="nb-nodeboard-set-content-js" name="content" data-ph="请在此输入留言内容，我们会尽快与您联系。（必填）" placeholder="请在此输入留言内容，我们会尽快与您联系。（必填）" class="nb-nodeboard-set-content nb-nodeboard-param"></textarea></ins><ins class="nb-nodeboard-name" style="z-index:4;"><ins class="nb-nodeboard-icon nodeName"></ins><input id="nb_nodeboard_set_name" data-write="0" name="visitorName" maxlength="30" class="nb-nodeboard-input nb-nodeboard-param" type="text" data-ph="姓名" placeholder="姓名"></ins><ins class="nb-nodeboard-name" id="nb_nodeboard_phone" style="z-index:3;"><ins class="nb-nodeboard-icon nodePhone"></ins><input id="nb_nodeboard_set_phone" name="visitorPhone" maxlength="30" class="nb-nodeboard-input nb-nodeboard-param" data-write="1" type="text" data-ph="电话（必填）" placeholder="电话（必填）"></ins><ins class="nb-nodeboard-name" id="nb_nodeboard_mail" style="z-index:2;"><ins class="nb-nodeboard-icon nodeMail"></ins><input id="nb_nodeboard_set_email" name="visitorEmail" maxlength="50" class="nb-nodeboard-input nb-nodeboard-param" type="text" data-write="0" data-ph="邮箱" placeholder="邮箱"></ins><ins class="nb-nodeboard-name" style="z-index:1;"><ins class="nb-nodeboard-icon nodeAddress"></ins><input id="nb_nodeboard_set_address" name="visitorAddress" class="nb-nodeboard-input nb-nodeboard-param" maxlength="50" type="text" data-write="0" data-ph="地址" placeholder="地址"></ins></ins></form><ins class="nb-nodeboard-success" id="nb_nodeboard_success"><ins class="nb-success-box"><ins class="nb-success-icon"></ins><ins class="nb-success-title" id="nb_node_messagetitle">感谢留言</ins><ins class="nb-success-content" id="nb_node_messagecontent">我们会尽快与您联系</ins><ins id="nb_nodeboard_return" class="nb-sucess-close">关闭</ins></ins></ins><ins class="nb-nodeboard-send" id="nb_node_contain"><ins id="nb_nodeboard_send" class="nb-nodeboard-send-btn nb-nodeboard-send-btn-0">发送</ins></ins></ins></ins><!-- end --><!-- target: iconIcon --><ins class="nb-icon-wrap nb-icon-base icon-right-center nb-icon-skin-0 nb-icon-icon" id="nb_icon_wrap" style="margin-top:-26px;width:144px;"><ins class="nb-icon-inner-wrap" style="height:52px;width:144px;;"><ins class="nb-icon-bridge0 nb-icon-bridge-base" data-type="iconInvite"></ins></ins></ins><!-- end --><!-- target: invite --><ins class="nb-invite-wrap nb-invite-wrap-base nb-position-base nb-middle  " id="nb_invite_wrap" style="width:400px;display:none;margin-left: -200px;margin-top: -88px;"><ins class="nb-invite-body nb-invite-skin-0" style="height:175px;;"><ins class="nb-invite-tool nb-invite-tool-base" id="nb_invite_tool" style=""></ins><ins class="nb-invite-text nb-invite-text-base"><ins class="nb-invite-welcome nb-invite-welcome-base nb-show" id="nb_invite_welcome"><p style="color: #fff">欢迎来到本网站，请问有什么可以帮您？</p></ins></ins><ins class="nb-invite-btn-base nb-invte-btns-0"><ins class="nb-invite-cancel nb-invite-cancel-base" id="nb_invite_cancel">稍后再说</ins><ins class="nb-invite-ok nb-invite-ok-base" id="nb_invite_ok">现在咨询</ins></ins></ins></ins><!-- end --></ins><script type="text/javascript" src="./文章_极速空间-电脑配置专业研究网站！_files/jquery.js.下载"></script>
<script type="text/javascript" src="./文章_极速空间-电脑配置专业研究网站！_files/plugins.js.下载"></script>
<script type="text/javascript" src="./文章_极速空间-电脑配置专业研究网站！_files/lang.js.下载"></script>
<script type="text/javascript" src="./文章_极速空间-电脑配置专业研究网站！_files/global.js.下载"></script>
<script type="text/javascript" src="./文章_极速空间-电脑配置专业研究网站！_files/init.js.下载"></script>
<script type="text/javascript" src="./文章_极速空间-电脑配置专业研究网站！_files/su_new.js.下载"></script>

<div id="loading_box" style="margin-right: -74.5px; opacity: 1.54212e-05; display: none;">正在处理您的请求...</div></body>
</html>
