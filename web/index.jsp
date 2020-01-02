<%@ page import="service.ArticlesService" %>
<%@ page import="java.util.List" %>
<%@ page import="domain.Article" %><%--
  Created by IntelliJ IDEA.
  User: FXH
  Date: 2019/9/9
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="wide">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>装机大师-电脑配置专业研究网站</title>
    <link type="image/x-icon" href="./Img/ji_s.png" rel="shortcut icon">
    <link type="text/css" href="./css/style.css" rel="stylesheet">
    <link type="text/css" href="./css/blue.css" rel="stylesheet">
    <script type="text/javascript">if (screen.width >= 1220) {
        document.getElementsByTagName('html')[0].className = 'wide';
    }</script>
    <link type="text/css" href="./css/articles1.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
</head>
<body id="page_articles" class="articles_page">
<div id="top">
    <div class="container">
        <div class="user_area" id="user_area">
            <em>欢迎您来到装机大师！</em>
            <a href="register.html" class="register">免费注册</a>
            <a href="login.html" class="login quick_login">登录</a>
        </div>
        <div class="small_nav top_nav_wrapper">
            <div class="nav">
                <ul class="level_1">
                    <li class="level_1 first">
                        <a href="Personal.html" class="level_1">
                            <strong>
                                <span>用户中心</span>
                            </strong>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div id="header">
    <div class="container">
        <div>
            <div id="logo" style="width: 30%">
                <a href="#" title="装机大师"><img src="./Img/logo.png" width="350px" height="90px" alt="装机大师"></a></div>
            <div style="float: right;padding-top: 15px">
                <form action="search.html" name="search_form" method="get" class="article_search">
                    <label>
                        <input type="text" name="keywords" value="" class="keyword">
                    </label>
                    <input type="submit" value="文章搜索"  class="submit btn_s3" style="margin-top:3px">
                </form>
                <div class="articles_notice notice_box"><a href="#">重要通知：本站即将关闭！</a></div>
            </div>
        </div>
        <div class="header_bar">
            <div class="header_bar_left">&nbsp;</div>
            <div class="header_bar_right">&nbsp;</div>
            <div class="nav_wrapper">
                <div class="nav">
                    <ul class="level_1" style="margin-top: 8px">
                        <li class="level_1 first"><a href="#" class="level_1"><strong><span
                                style="font-size: 18px;line-height: 30px">首页</span></strong></a></li>
                        <li class="level_1"><a href="CPU.html" class="level_1"><strong><span
                                style="font-size: 18px;line-height: 30px">CPU</span></strong></a></li>
                        <li class="level_1"><a href="#" class="level_1"><strong><span
                                style="font-size: 18px;line-height: 30px">GPU</span></strong></a></li>
                        <li class="level_1"><a href="#" class="level_1"><strong><span
                                style="font-size: 18px;line-height: 30px">主板</span></strong></a></li>
                        <li class="level_1"><a href="#" class="level_1"><strong><span
                                style="font-size: 18px;line-height: 30px">内存硬盘</span></strong></a></li>
                        <li class="level_1"><a href="#" class="level_1"><strong><span
                                style="font-size: 18px;line-height: 30px">显示器</span></strong></a></li>
                        <li class="level_1"><a href="#" class="level_1"><strong><span
                                style="font-size: 18px;line-height: 30px">机箱电源其它</span></strong></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="content" style="padding-bottom: 0">
    <div class="container">
        <div class="col_main">
            <div class="articles_featured clearfix">
                <%
                    ArticlesService articlesService = new ArticlesService();
                    List<Article> articleList = articlesService.getRecommemdArticleList();

                    String first = "<div class=\"item first\">\n" +
                            "<a href=\"#\" class=\"image\">\n" + "<img src=\"pageImg/" + articleList.get(0).getImgSrc() + "\" width=\"200\" height=\"150\" alt=\"tu\">\n" + "</a>\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_1\">1</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(0).getId() + "\" target=\"_blank\">" + articleList.get(0).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<p class=\"content\">" + articleList.get(0).getContent() + "</p>\n" +
                            "<span class=\"time\">" + articleList.get(0).getDate() + "</span>\n" +
                            "</div>" +
                            "<div class=\"item left\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_2\">2</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(1).getId() + "\" target=\"_blank\">" + articleList.get(1).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(1).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_3\">3</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(2).getId() + "\" target=\"_blank\">" + articleList.get(2).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(2).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item left\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_4\">4</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(3).getId() + "\" target=\"_blank\">" + articleList.get(3).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(3).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_5\">5</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(0).getId() + "\" target=\"_blank\">" + articleList.get(4).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(4).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item left\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_6\">6</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(5).getId() + "\" target=\"_blank\">" + articleList.get(5).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(5).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_7\">7</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(6).getId() + "\" target=\"_blank\">" + articleList.get(6).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(6).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item left\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_8\">8</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(7).getId() + "\" target=\"_blank\">" + articleList.get(7).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(7).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_9\">9</span>\n" +
                            "<a href=\"" +
                            "read.html?id=" + articleList.get(8).getId() + "\" target=\"_blank\">" + articleList.get(8).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(8).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item left\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_10\">10</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(9).getId() + "\" target=\"_blank\">" + articleList.get(9).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(9).getDate() + "</span>\n" +
                            "</div>\n" +
                            "<div class=\"item\">\n" +
                            "<h3>\n" +
                            "<span class=\"badge badge_11\">11</span>\n" +
                            "<a href=\"" + "read.html?id=" + articleList.get(10).getId() + "\" target=\"_blank\">" + articleList.get(10).getTitle() + "</a>\n" +
                            "</h3>\n" +
                            "<span class=\"time\">" + articleList.get(10).getDate() + "</span>\n" +
                            "</div>";
                    out.print(first);
                %>

            </div>
            <div class="left">
                <iframe src="article_list_m.html?type=CPU" scrolling="no" width="417px" height="290px"></iframe>
            </div>
            <div class="articles_cat_right">
                <iframe src="article_list_m.html?type=MainBoard" scrolling="no" width="417px" height="290px"></iframe>
            </div>
            <div class=" left">
                <iframe src="article_list_m.html?type=GPU" scrolling="no" width="417px" height="290px"></iframe>
            </div>
            <div class="articles_cat_right">
                <iframe src="article_list_m.html?type=MemoryAndHard_Disk" scrolling="no" width="417px"
                        height="290px"></iframe>
            </div>
            <div class=" left">
                <iframe src="article_list_m.html?type=Other" scrolling="no" width="417px" height="290px"></iframe>
            </div>
            <div class="articles_cat_right ">
                <iframe src="article_list_m.html?type=Monitor" scrolling="no" width="417px" height="290px"></iframe>
            </div>
        </div>
        <div class="col_sub">
            <iframe src="new_article.html" scrolling="no" width="335px" height="362px"></iframe>
            <iframe src="hot.html" scrolling="no" width="335px" height="900px" style="margin-top: 15px"></iframe>
        </div>
    </div>
</div>
<div id="footer2">
    <div class="container">
        <div class="box thin_box full_box">
            <div class="hd">
                <h3>
                </h3>
                <div class="extra">
                </div>
            </div>
            <div class="bd">
                <div class="foot">
                    <div class="foot_c">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td width="58%">
                                    <a href="#">网站简介</a> |<a
                                        href="#">联系我们</a> |<a
                                        href="#">版权声明</a>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="font_tx">　© 2019 装机大师&nbsp;版权所有&nbsp;&nbsp;<br>
                                </td>
                                <td align="right"> ICP备案证书号:<a href="http://www.miitbeian.gov.cn/" target="_blank">XXXXXXXXXXX号</a>
                                    <span style="width:300px;margin:0 auto; padding:20px 0;">
<img
        src="./pageImg/beian.png" width="20" height="20">
<a target="_blank" href="#"
   style="display:inline-block;text-decoration:none;height:20px;line-height:20px;">
<p style="float:left;height:20px;line-height:20px;margin: 0 0 0 5px; color:#939393;">X公网安备 xxxxxxxxxxxxxxxx号</p>
</a>
</span>
                                    <br>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="./js/base.js"></script>
</body>
</html>