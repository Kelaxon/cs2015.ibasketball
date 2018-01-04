<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="Hibernate.PO.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

     <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />

    <title>篮球技术网 - 致力于中国篮球运动发展 | 用心帮助每一位热爱篮球运动的朋友</title>

    <meta name="description" content="为篮球爱好者提供篮球技术,篮球战术,投篮技巧,篮球过人技术,篮球防人技术,篮球视频等多方面的资讯信息" />
    <meta name="keywords" content="篮球战术,篮球规则,篮球技术,篮球裁判,篮球过人技术,篮球防守技术,篮球进攻技术,投篮技巧,篮球视频教学" />
    <meta name="Author" content="篮球技术,篮球战术,篮球规则,www.ilanqiu.com" /> 
    <meta name="copyright" content="Copyright 2008 - www.ilanqiu.com" />
    <meta http-equiv="Content-Language" content="zh-CN" />
    <!-- <script type="text/javascript" src="http://www.ilanqiu.com/templets/images/sat.js" charset="gbk"></script> -->

    <link href="http://www.ilanqiu.com/templets/default/style/bootstrap.min.css" rel="stylesheet">
    <link href="http://www.ilanqiu.com/templets/default/style/index.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="http://www.ilanqiu.com/templets/default/style/indexcms.css" rel="stylesheet">

    <meta name="360-site-verification" content="bf15462d600bce1946db2a4a9c87da7a" />
    <meta name="shenma-site-verification" content="d06da59c7e3b893c6477b54bac72608f_1488720447">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- 返回顶部 -->
    <link rel="stylesheet" type="text/css" href="http://www.ilanqiu.com/templets/default/style/97zzw.css" /> 
</head>
<body>
<header class="header">
    <div class="site-top clearfix">
        <div class="welcome clearfix">
            <span class="welcomel">欢迎光临篮球技术网 - 努力打造最好的篮球技术门户！</span>
        </div>

    </div>
	<div class="logo-top  clearfix">
        <div class="logo-top-top">


            <div class="col-md-9 column" style="padding-left:5%;">
                <div class="pos2">
                                <div class="logo"><a title="篮球技术网" href="http://www.ilanqiu.com"><img  alt="篮球技术网" src="http://www.ilanqiu.com/templets/default/images/logo.png" width="155" height="71" border="0"></a>
                </div>
                <span class="logo-ms">用心帮助每一位热爱篮球运动的朋友</span>
                </div>
            </div>


            <div class="col-md-3 column">
                <div class="search">
                    <form action="http://www.ilanqiu.com/plus/search.php" name="formsearch" id="formsearch" target="_blank">
                        <table width="100%" border="0" align="right" cellpadding="0" cellspacing="0">
                            <tbody>
                            <tr>
                                <td width="65%"><input name="keyword" class="search_td1" type="text" class="search-keyword" id="search-keyword" placeholder="想看什么，搜吧" onfocus="if(this.value=='在这里搜索...'){this.value='';}" onblur="if(this.value==''){this.value='在这里搜索...';}"></td>
                                <td width="35%" align="left"><input class="search_td2" name="imageField222" type="image" src="http://www.ilanqiu.com/templets/img/so.png"></td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>

    </div>

</header>
<div class="header">
    <div class="kch_nav">
        <div class="kch_nav_cont">
            <div class="kch_nav_logo">

                <div class="kch_nav_menu_1">
                    <a class="h_logo" href="http://www.ilanqiu.com/">首页</a>
                    <em>&gt;</em>
                    <a class="h_txt" href='http://www.ilanqiu.com/technology/' title="篮球技术">篮球技术</a>
                    <em>&gt;</em>
                    <a class="h_txt" href='http://www.ilanqiu.com/strategy/'>篮球战术</a>
                    <em>&gt;</em>
                    <a class="h_txt" href='http://www.ilanqiu.com/rules/' title="篮球规则">篮球规则</a>
                    <em>&gt;</em>
                    <a class="h_search" href="http://so.zixuntop.com/cse/search?s=14537994687377411843" target="_blank"></a>
                    
                </div> 
         
                <a class="mainMenu" id="kchMainMenu"></a>
            </div>

            <div class="kch_nav_menu">
                <ul>
                    <li class="d"><a href="http://www.ilanqiu.com/">首 页</a></li> 
                    <li><a href='http://www.ilanqiu.com/news/'>篮球资讯</a></li>
                    <li><a href='http://www.ilanqiu.com/technology/'>篮球技术</a></li>
                    <li><a href='http://www.ilanqiu.com/strategy/'>篮球战术</a></li>
                    <li><a href='http://www.ilanqiu.com/streetball/'>街球魅力</a></li>
                    <li><a href='http://www.ilanqiu.com/rules/'>篮球规则</a></li>
                    <li><a href='http://www.ilanqiu.com/referee/'>篮球裁判</a></li>
                    <li style="display: none;"><a href='http://www.ilanqiu.com/wikipedia/'>篮球百科</a></li>

                    <li><a href='http://www.ilanqiu.com/LXvideo/'>篮球录像</a></li>

                    <li><a href='http://www.ilanqiu.com/video/'>篮球视频</a></li>
                    <li><a href='http://www.ilanqiu.com/star/'>篮球明星</a></li>
                    <li><a href='http://www.ilanqiu.com/Coach/'>篮球教练</a></li>
                    <li><a href='http://www.ilanqiu.com/equipment/'>篮球装备</a></li>    
                </ul>
            </div>

        </div>
    </div>

    <div class="kch_nav_menu1">

        <ul>
            <li class="d"><a href="http://www.ilanqiu.com/">首 页</a></li> 
            <li><a href='http://www.ilanqiu.com/news/'>篮球资讯</a></li>
            <li><a href='http://www.ilanqiu.com/technology/'>篮球技术</a></li>
            <li><a href='http://www.ilanqiu.com/strategy/'>篮球战术</a></li>
            <li><a href='http://www.ilanqiu.com/streetball/'>街球魅力</a></li>
            <li><a href='http://www.ilanqiu.com/rules/'>篮球规则</a></li>
            <li><a href='http://www.ilanqiu.com/referee/'>篮球裁判</a></li>
            <li style="display: none;"><a href='http://www.ilanqiu.com/wikipedia/'>篮球百科</a></li>

            <li><a href='http://www.ilanqiu.com/LXvideo/'>篮球录像</a></li>

            <li><a href='http://www.ilanqiu.com/video/'>篮球视频</a></li>
            <li><a href='http://www.ilanqiu.com/star/'>篮球明星</a></li>
            <li><a href='http://www.ilanqiu.com/Coach/'>篮球教练</a></li>
            <li><a href='http://www.ilanqiu.com/equipment/'>篮球装备</a></li>    
        </ul>   

    </div>
</div>    
<script src="http://www.ilanqiu.com/templets/default/js/bootstrap.min.js"></script>
<!-- 回到顶部 -->
<script>
    var i=1;
    $('#kchMainMenu').click(function(){
        ++i;
 
        if(i%2==0){
            $('.kch_nav_menu1').fadeIn(500);
            $(this).css('color','#b6b6b6');
        }else{
            $('.kch_nav_menu1').fadeOut(500);
            $(this).css('color','#42AF41');
        }
 
    })
 </script> 
      

<!-- header结束 -->
    <div class="container">                               
        <div class="row clearfix">
            <!-- 轮播图开始 -->
            <div class="swiper-container" id="swiper-container">
                <div class="swiper-wrapper">

                    <a href="http://www.ilanqiu.com/basketball/40585.html" class="swiper-slide" target="_blank">
                        <img src="http://www.ilanqiu.com/templets/images/shuffling/001.jpg">
                        <div class="swiper-slide-text">
                            <p class="swiper-slide-text-cnt">NBA常规赛：波士顿凯尔特人91-81底特律活塞</p>
                        </div>
                    </a>

                    <a href="http://www.ilanqiu.com/basketball/40613.html" class="swiper-slide" target="_blank">
                        <img src="http://www.ilanqiu.com/templets/images/shuffling/002.jpg">
                        <div class="swiper-slide-text">
                            <p class="swiper-slide-text-cnt">杜兰特21+7+8勇士轻取魔术</p>
                        </div>
                    </a>

                    <a href="http://www.ilanqiu.com/basketball/40670.html" class="swiper-slide" target="_blank">
                        <img src="http://www.ilanqiu.com/templets/images/shuffling/003.jpg">
                        <div class="swiper-slide-text">
                            <p class="swiper-slide-text-cnt">重温科比第五冠全记录 伟大毋容置疑</p>
                        </div>
                    </a>


                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            <!-- 轮播图结束了 -->

            <div class="imagead">
                <img alt="广告位" src="http://www.ilanqiu.com/templets/images/1200100.jpg">
            </div>
            <!-- 内容区域 -->
            <div class="matter">
                
                    <div class="col-sm-6 col-md-5" id="colsm6">


                        <div style="height: 270px;">                        
                            <div class="news-header">
                                <h3>NBA录像</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/41235.html"><span class="article_list">2018年1月2日猛龙vs雄鹿全场录像_NBA常规赛</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41234.html"><span class="article_list">2018年1月2日篮网vs魔术全场录像_NBA常规赛</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41233.html"><span class="article_list">2018年1月2日公牛vs开拓者全场录像_NBA常规赛</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41232.html"><span class="article_list">2018年1月2日森林狼vs湖人全场录像_NBA常规赛</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41231.html"><span class="article_list">2018年1月2日NBA五佳球-伊巴卡钉板血帽 阿伦单臂</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41182.html"><span class="article_list">2018年1月1日NBA十佳球-格里芬突破劈扣 考利斯坦</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41180.html"><span class="article_list">2018年1月1日步行者vs森林狼全场录像_NBA常规赛</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41179.html"><span class="article_list">2018年1月1日火箭vs湖人全场录像_NBA常规赛</span><span class="article_time">01-02</span></a></li>

                            
                            </ul>
							<span><a href="http://www.ilanqiu.com/LXvideo/NBAluxiang/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>



                        <div class="news-view-left0">
                         <div class="news-img-left">
                                <a title="NBA篮球裁判手势图解 NBA判罚标准" href="http://www.ilanqiu.com/basketball/37501.html" target="_blank">
                                    <img alt="NBA篮球裁判手势图解 NBA判罚标准" src="http://www.ilanqiu.com/images/10011.jpg">
                                </a>
                            </div>
                           
                            <div class="news-header-top">
                                <h3><a href="http://www.ilanqiu.com/basketball/37501.html" target="_blank">NBA篮球裁判手势图解 NBA判罚标准</a></h3>
                            </div>
                            <div class="news-main">
                                <p>1 比赛时钟管理 NBA在暂停规定上与国际篮联不同，其中最为显著的一点是比赛中球员控制球时，该队教练或者控球球员可以向裁判请求暂停（FIBA是教练向记录台申请）。此外，在上下半场和...<a href="http://www.ilanqiu.com/basketball/37501.html">[查看全文]</a></p>    
                            </div>

                        </div>
                        <div class="ceshi"></div>

                        <div class="news-view-left">
                            <div class="news-img-left">                               
                                <img alt="最近更新" src="http://www.ilanqiu.com/images/10012.jpg">
                            </div> 
                            <div class="news-header">
                                <h3>最近更新</h3>
                            </div>
                            <div class="news-img">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/41227.html"><span class="article_list">比尔 路威分获上周东西部最佳球员</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41235.html"><span class="article_list">2018年1月2日猛龙vs雄鹿全场录像_NBA常规赛</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41234.html"><span class="article_list">2018年1月2日篮网vs魔术全场录像_NBA常规赛</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41233.html"><span class="article_list">2018年1月2日公牛vs开拓者全场录像_NBA常规赛</span><span class="article_time">01-03</span></a></li>

                                </ul>   
                            </div>
                        </div>
                        <div class="ceshi"></div>

                        <div class="news-view-left">
                            <div class="news-img-left">
                                <img alt="特别推荐" src="http://www.ilanqiu.com/images/10013.jpg">
                            </div> 
                            <div class="news-header">
                                <h3>特别推荐</h3>
                            </div>
                            <div class="news-img">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/33102.html"><span class="article_list"><strong><font color='#0000FF'>库里投篮手势图解(库里投篮姿势解析)库里投篮手势</font></strong></span><span class="article_time">04-15</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/2071.html"><span class="article_list">MadeinChina扣篮团队爆虐篮筐</span><span class="article_time">03-24</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/2072.html"><span class="article_list">盘点NBA十大扣将:罚球线起跳+扣碎篮板</span><span class="article_time">03-24</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/3918.html"><span class="article_list">TFB：Jus Fly整整3分钟各种经典扣篮</span><span class="article_time">03-24</span></a></li>

                                </ul> 
                            </div>
                        </div> 
                        <div class="ceshi"></div>
                        <div class="news-view-left">
                            <div class="news-img-left">
                                <a title="篮球书籍" href="http://www.ilanqiu.com/shop/book/" target="_blank">
                                    <img alt="篮球书籍" src="http://www.ilanqiu.com/images/10014.jpg">
                                </a>
                            </div> 
                            <div class="news-header">
                                <h3>篮球书籍</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li>
                                <span><a href="http://www.ilanqiu.com/basketball/4268.html"><span class="article_list">《篮球规则》(2010版)</span><span class="article_time">04-16</span></a></span>
                                </li>
<li>
                                <span><a href="http://www.ilanqiu.com/basketball/6409.html"><span class="article_list">《篮球个人技术全图解》（</span><span class="article_time">07-17</span></a></span>
                                </li>
<li>
                                <span><a href="http://www.ilanqiu.com/basketball/4300.html"><span class="article_list">《篮球高手防守技战术全攻</span><span class="article_time">03-24</span></a></span>
                                </li>

                                </ul> 
                                <span><a href="http://www.ilanqiu.com/shop/book/" target="_blank">更多</a></span>
                            </div>
                        </div>                          
                        <div class="ceshi"></div>
                        <div class="news-view-left">
                            <div class="news-img-left">
                                <a title="篮球装备" href="http://www.ilanqiu.com/equipment/" target="_blank">
                                    <img alt="篮球装备" src="http://www.ilanqiu.com/images/10015.jpg">
                                </a>
                            </div> 
                            <div class="news-header">
                                <h3>篮球装备</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li>
                                <a href="http://www.ilanqiu.com/basketball/6047.html"><span class="article_list">Nike Zoom Kobe VI Imperia</span><span class="article_time">07-05</span></a>
                                </li>
<li>
                                <a href="http://www.ilanqiu.com/basketball/38917.html"><span class="article_list">高耐磨篮球鞋推荐</span><span class="article_time">10-23</span></a>
                                </li>
<li>
                                <a href="http://www.ilanqiu.com/basketball/826.html"><span class="article_list">什么是SC运动鞋？</span><span class="article_time">01-03</span></a>
                                </li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/equipment/" target="_blank">更多</a></span>
                            </div>
                        </div> 
                        <div class="ceshi"></div>
                        <div class="news-view-left">
                            <div class="news-img-left">
                                <a title="篮球明星" href="http://www.ilanqiu.com/star/" target="_blank">
                                    <img alt="篮球明星" src="http://www.ilanqiu.com/images/10016.jpg">
                                </a>
                            </div> 
                            <div class="news-header">
                                <h3>篮球明星</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/40670.html"><span class="article_list">重温科比第五冠全记录 伟大毋容置疑</span><span class="article_time">12-18</span></a></li>
<li><a href="http://www.ilanqiu.com/star/yaoming/2017/0727/37490.html"><span class="article_list"><strong>中国篮球史上最强5人  姚明当之无愧第四个还有争</strong></span><span class="article_time">07-27</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/37489.html"><span class="article_list">欧文单屁K詹姆斯 飞机上中指挑衅</span><span class="article_time">07-27</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/star/" target="_blank">更多</a></span>
                            </div>
                        </div> 
                        <div class="ceshi"></div>
                    </div>
                    <div class="col-sm-6 col-md-4" id="colsm6">

                        <div class="news-view-centre"> 
                            <div class="news-header">
                                <h3>CBA录像</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/41204.html"><span class="article_list">2017-12-31日CBA常规赛 山东vs北京 全场录像回放</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41203.html"><span class="article_list">2017-12-31日CBA常规赛 八一vs辽宁 全场录像回放</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41202.html"><span class="article_list">2017-12-31日CBA常规赛 同曦vs福建 全场录像回放</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41201.html"><span class="article_list">2017-12-30日CBA常规赛 青岛vs北控 全场录像回放</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41200.html"><span class="article_list">2017-12-30日CBA常规赛 浙江vs江苏 全场录像回放</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41199.html"><span class="article_list">2017-12-30日CBA常规赛 广州vs四川 全场录像回放</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41198.html"><span class="article_list">2017-12-30日CBA常规赛 新疆vs深圳 全场录像回放</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41193.html"><span class="article_list">2017-12-29日CBA常规赛 广厦vs吉林 全场录像回放</span><span class="article_time">01-02</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/LXvideo/CBAluxiang/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>


                        <div class="news-view-centre">
                            <div class="news-img-centre">
                                    <img alt="热门内容" src="http://www.ilanqiu.com/images/10021.jpg">
                            </div> 
                            <div class="news-header">
                                <h3>热门内容</h3>
                            </div>
                            <div class="news-img">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/28566.html"><span class="article_list"><font color='#0000FF'>图解八种常用的篮球运球技术运球技巧</font></span><span class="article_time">02-25</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/4927.html"><span class="article_list">图解篮球标准投篮动作</span><span class="article_time">08-21</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/12619.html"><span class="article_list"><font color='#FF0000'>图文浅析艾佛森的蝴蝶穿花步过人技术</font></span><span class="article_time">03-19</span></a></li>

                                </ul> 
                            </div>
                        </div>
                        <div class="ceshi"></div>
                        <div class="news-view-centre">
                            <div class="news-img-centre">
                                <a title="篮球进攻技术" href="http://www.ilanqiu.com/technology/offense/" target="_blank">
                                    <img alt="篮球进攻技术" src="http://www.ilanqiu.com/images/10022.jpg">
                                </a>
                            </div> 
                            <div class="news-header">
                                <h3>篮球进攻技术</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/28709.html"><span class="article_list">NBA体能教练亲传篮球跳投技术:来自欧文的不可抵挡</span><span class="article_time">12-28</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/234.html"><span class="article_list">篮球技巧：篮球助攻水平层次</span><span class="article_time">07-03</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/technology/offense/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>

                        <div class="news-view-centre"> 
                            <div class="news-header">
                                <h3>经验心得</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/40838.html"><span class="article_list">怎样有效处理篮球运动中手指戳伤</span><span class="article_time">12-20</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40837.html"><span class="article_list">如何短时间提高篮球技术</span><span class="article_time">12-20</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40798.html"><span class="article_list">冬天打篮球必备攻略，这几条必须注意了</span><span class="article_time">12-19</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40797.html"><span class="article_list">篮球热身技巧，对你健康有益</span><span class="article_time">12-19</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40740.html"><span class="article_list">球的规则有哪些，篮球爱好者你可能不全知道哦</span><span class="article_time">12-18</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40737.html"><span class="article_list">篮球过人技巧分，你懂多少</span><span class="article_time">12-18</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40592.html"><span class="article_list">篮球投篮的几个技术动作</span><span class="article_time">12-13</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40591.html"><span class="article_list">中远距离持球攻的一些技巧</span><span class="article_time">12-13</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/technology/experience/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div> 

                        <div class="news-view-centre"> 
                            <div class="news-header">
                                <h3>热门篮球战术</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/51.html"><span class="article_list">篮球战术：‘1-2-2’进攻法ＶＳ‘2-3区域’联防</span><span class="article_time">05-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/4416.html"><span class="article_list">篮球三角战术:图解分卫切入</span><span class="article_time">03-31</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/874.html"><span class="article_list">图解篮球传切配合进攻战术练习方法（1）</span><span class="article_time">01-06</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/875.html"><span class="article_list">图解篮球传切配合进攻战术练习方法（2）</span><span class="article_time">01-06</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/4417.html"><span class="article_list">篮球三角战术:图解内线外移</span><span class="article_time">03-31</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/52.html"><span class="article_list">篮球战术：三大‘1-3-1进攻’配合方法</span><span class="article_time">05-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/4451.html"><span class="article_list">初探篮球反跑战术</span><span class="article_time">04-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/4412.html"><span class="article_list">篮球三角战术:图解控卫内切战术</span><span class="article_time">03-29</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/strategy/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>                          

                        <div class="news-view-centre"> 
                            <div class="news-header">
                                <h3>热门篮球视频</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/11885.html"><span class="article_list">全美高中最强悍暴力的Crossover运球过人集锦</span><span class="article_time">03-23</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/16201.html"><span class="article_list">推荐:科比跳投视频锦集</span><span class="article_time">03-23</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/16507.html"><span class="article_list">乔丹经典视频回顾:1984奥运会精彩篮球赛事集锦</span><span class="article_time">03-23</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28569.html"><span class="article_list">篮球比赛不是只有胜败 美国高中生上演感人助攻</span><span class="article_time">03-21</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/16473.html"><span class="article_list">篮球场上的脚踝终结者:最全crossover视频合集</span><span class="article_time">03-23</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/16501.html"><span class="article_list">脚踝杀手:Xavier Rathan变态交叉变向运球</span><span class="article_time">03-23</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/18138.html"><span class="article_list">假穿上篮动态图:上篮动作中不可缺少的投篮技术</span><span class="article_time">03-23</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/2293.html"><span class="article_list">20大NBA侮辱性隔人爆扣!</span><span class="article_time">03-24</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/video/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div> 

                        <div class="news-view-centre"> 
                            <div class="news-header">
                                <h3>人气街球</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/67.html"><span class="article_list">街球技巧：如何练习街头篮球</span><span class="article_time">05-30</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/359.html"><span class="article_list">街球技巧:掌握手指、手腕、胸前转球技巧</span><span class="article_time">07-27</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/11808.html"><span class="article_list">中国传奇街头篮球团队:CL</span><span class="article_time">03-17</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/22246.html"><span class="article_list">街球运动中如何掌握篮球节奏感?如何建立篮球节奏</span><span class="article_time">07-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/23951.html"><span class="article_list">慢动作回放教学:The Professor教授街球晃人技术教</span><span class="article_time">08-20</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/11578.html"><span class="article_list">街球大师Snake传授街球晃人招数：Breakdown Moves</span><span class="article_time">03-10</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/113.html"><span class="article_list">街球技巧：街头篮球三种基础训练</span><span class="article_time">06-18</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/69.html"><span class="article_list">街球明星之“辣酱”：菲利普·查普安</span><span class="article_time">04-21</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/streetball/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>

                        <div class="news-view-centre"> 
                            <div class="news-header">
                                <h3>篮球音乐</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/37656.html"><span class="article_list">街头篮球背景音乐经典配乐 值得收藏</span><span class="article_time">08-13</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28904.html"><span class="article_list"> 英国人气男孩组合The Wanted的单曲（很高兴你能</span><span class="article_time">03-15</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28903.html"><span class="article_list">NBA 音乐集锦 全是好听的NBA背景音乐合集</span><span class="article_time">03-15</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28763.html"><span class="article_list">NBA音乐经典回顾 21014赛季 季后赛主题曲Timber-P</span><span class="article_time">01-04</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28762.html"><span class="article_list">nba 2015到2015赛季NBA总决赛主题曲 Champion</span><span class="article_time">01-04</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28761.html"><span class="article_list">NBA 2k14背景音乐之一阿姆的not afraid</span><span class="article_time">01-04</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28760.html"><span class="article_list">NBA音乐看球听歌最难得享受</span><span class="article_time">01-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28744.html"><span class="article_list">NBA篮球巨星大鲨鱼奥尼尔第一首单曲MV</span><span class="article_time">01-02</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/music/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>

                        <div class="news-view-centre"> 
                            <div class="news-header">
                                <h3>篮球教练</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/36061.html"><span class="article_list">2017 上海篮球教练培训班通知</span><span class="article_time">06-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/36060.html"><span class="article_list">篮球教练证书的样子和封面</span><span class="article_time">06-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/36059.html"><span class="article_list">篮球教练证书的等级划分</span><span class="article_time">06-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/36058.html"><span class="article_list">如何才能成为篮球教练？怎样才能获得教练资格证？</span><span class="article_time">06-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/36057.html"><span class="article_list">篮球私人教练 篮球教练的天堂</span><span class="article_time">06-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/36056.html"><span class="article_list">篮球教练和足球教练，哪个对比赛作用大？</span><span class="article_time">06-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28771.html"><span class="article_list">一个篮球教练记录的快乐时光，也许对你有帮助</span><span class="article_time">01-06</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/4795.html"><span class="article_list">篮球教练在篮球比赛中的职责和权利</span><span class="article_time">05-03</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/Coach/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>  

                    </div>
                    <div class="col-sm-6 col-md-3" id="colsm6">


                        <div class="news-view-right">                        
                            <div class="news-header">
                                <h3>综合录像</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/40851.html"><span class="article_list">12月19日2017CCTV体坛风云人物提名奖揭晓全场录像</span><span class="article_time">12-21</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40739.html"><span class="article_list">2017-12-11日斯诺克英国锦标赛决赛奥沙利文vs墨菲</span><span class="article_time">12-18</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40738.html"><span class="article_list">2017-12-10世界职业拳王争霸赛全场录像</span><span class="article_time">12-18</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40574.html"><span class="article_list">2017-12-11斯诺克英国锦标赛决赛奥沙利文vs墨菲全</span><span class="article_time">12-13</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40018.html"><span class="article_list">2017-11-26F1阿布扎比站正赛全场录像</span><span class="article_time">11-28</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/39471.html"><span class="article_list">2017-10-30世界斯诺克锦标赛第1轮墨菲vs梅希文全</span><span class="article_time">11-10</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/39470.html"><span class="article_list">2017-11-5世界职业拳王争霸赛全场录像</span><span class="article_time">11-10</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/39469.html"><span class="article_list">2017-10-29世界职业拳王争霸赛完整录像回放</span><span class="article_time">11-10</span></a></li>

                            </ul>
                            <span><a href="http://www.ilanqiu.com/LXvideo/zongheluxiang/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>

  
                        <div class="news-view-right"> 
                            <div class="news-img-right">
                                <a title="热门篮球技术" href="http://www.ilanqiu.com/technology/" target="_blank">
                                    <img alt="热门篮球技术" src="http://www.ilanqiu.com/images/10031.jpg">
                                </a>
                            </div>                         
                            <div class="news-header">
                                <h3>热门篮球技术</h3>
                            </div>
                            <div class="news">
                                <ul>
                                <li><a href="http://www.ilanqiu.com/basketball/28566.html"><span class="article_list"><font color='#0000FF'>图解八种常用的篮球运球技术运球技巧</font></span><span class="article_time">02-25</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/4927.html"><span class="article_list">图解篮球标准投篮动作</span><span class="article_time">08-21</span></a></li>

                                </ul>
                                <span><a href="http://www.ilanqiu.com/technology/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>  

  
                        <div class="news-view-right"> 
                            <div class="news-img-right">
                                <a title="篮球防守技术" href="http://www.ilanqiu.com/technology/defense/" target="_blank">
                                    <img alt="篮球防守技术" src="http://www.ilanqiu.com/images/10032.jpg">
                                </a>
                            </div>                         
                            <div class="news-header">
                                <h3>篮球防守技术</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/140.html"><span class="article_list">篮球技巧：五种防守之道</span><span class="article_time">06-25</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/631.html"><span class="article_list">掌握篮球防运球对手的防守技巧</span><span class="article_time">12-10</span></a></li>

                            </ul>
                            <span><a href="http://www.ilanqiu.com/technology/defense/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>
  
                        <div class="news-view-right">                        
                            <div class="news-header">
                                <h3>篮球基础技术</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/41226.html"><span class="article_list">篮球技巧：晃得防守不认识回家的路！</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41224.html"><span class="article_list">篮球技巧：上篮的时候如何保护球？</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41223.html"><span class="article_list">篮球技巧：球场上常见的防守技巧！</span><span class="article_time">01-02</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41120.html"><span class="article_list">篮球教学-妹纸教你如何练好运球基本功</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41119.html"><span class="article_list">篮球教学-胯下运球初级教学</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41118.html"><span class="article_list"> 不满足于基础！小托马斯式的控球高阶训练</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41092.html"><span class="article_list">专业！篮球控球训练方法</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41091.html"><span class="article_list">篮球教学-运球进阶性训练之运用网球练习</span><span class="article_time">12-28</span></a></li>

                            </ul>
                            <span><a href="http://www.ilanqiu.com/technology/base/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>
  
                        <div class="news-view-right">                        
                            <div class="news-header">
                                <h3>篮球战术</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/41123.html"><span class="article_list">篮球战术：火力十足的“手枪战术”</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41122.html"><span class="article_list">篮球战术：3V3篮球中的挡拆战术</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41121.html"><span class="article_list">值得收藏的七种篮球战术</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/41055.html"><span class="article_list">必知的几种篮球进攻站位</span><span class="article_time">12-27</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40912.html"><span class="article_list">篮球战术：底线发球时如何破二三联防</span><span class="article_time">12-22</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40869.html"><span class="article_list">篮球战术：掌握3种快攻战术</span><span class="article_time">12-21</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40868.html"><span class="article_list">篮球战术：6张图教你学会二一二联防战术</span><span class="article_time">12-21</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/40867.html"><span class="article_list">篮球挡拆是个技术活，没那么简单哦！</span><span class="article_time">12-21</span></a></li>

                            </ul>
                            <span><a href="http://www.ilanqiu.com/strategy/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>
  
                        <div class="news-view-right">                        
                            <div class="news-header">
                                <h3>篮球裁判</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/37501.html"><span class="article_list">NBA篮球裁判手势图解 NBA判罚标准</span><span class="article_time">11-24</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/37549.html"><span class="article_list">不管她是香港的还是江西的 赛场上的彭玲是最美的</span><span class="article_time">08-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/36291.html"><span class="article_list">放飞青春梦想 22岁湖南大三女孩变身球场最美裁判</span><span class="article_time">06-12</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/34351.html"><span class="article_list">篮球技术网之篮球裁判考试考题测试</span><span class="article_time">04-26</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/34350.html"><span class="article_list">篮球裁判双子星张大龙赵小龙 裁判新锐</span><span class="article_time">04-26</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/34349.html"><span class="article_list">篮球裁判 - 篮球英语你掌握？（方法篇）- 路易斯</span><span class="article_time">04-26</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/34348.html"><span class="article_list">最新篮球裁判手势图解 2017最新裁判图解</span><span class="article_time">04-26</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/34347.html"><span class="article_list">常德裁判培训班圆满结束 2017年第一届</span><span class="article_time">04-26</span></a></li>

                            </ul>
                            <span><a href="http://www.ilanqiu.com/referee/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>
  
                        <div class="news-view-right">                        
                            <div class="news-header">
                                <h3>街球视频</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/28782.html"><span class="article_list">街头篮球初学视频</span><span class="article_time">01-08</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28719.html"><span class="article_list">法国达人超强花式街头篮球 帅爆了</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28718.html"><span class="article_list">街头篮球视频教学-魔力篮球的魅力</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28683.html"><span class="article_list">打街球的艾弗森依然华丽的横扫一切！！</span><span class="article_time">05-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28678.html"><span class="article_list">世界3X3锦标赛：街球手曾柏喻展示超强运球技术</span><span class="article_time">10-25</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28664.html"><span class="article_list">让你欲罢不能的十五佳炫酷街球赛场SHOW！</span><span class="article_time">09-25</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28656.html"><span class="article_list">身矮技强 身高仅1米街球手暴虐对手</span><span class="article_time">09-04</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28655.html"><span class="article_list">身高仅1米3的街球手让你感受爆炸球技！</span><span class="article_time">09-03</span></a></li>

                            </ul>
                            <span><a href="http://www.ilanqiu.com/street/video/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>

                        <div class="news-view-right">                        
                            <div class="news-header">
                                <h3>街球明星</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/35933.html"><span class="article_list">史上最强街球霸王美国街球手超强crossover</span><span class="article_time">05-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/35932.html"><span class="article_list">美国历史上最著名的的街球明星排行榜</span><span class="article_time">05-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/34688.html"><span class="article_list">NBA巨星照样玩街球杂耍 玩到嗨</span><span class="article_time">04-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/34687.html"><span class="article_list">雷森·鲍彻是美国传奇街球手</span><span class="article_time">04-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28865.html"><span class="article_list">街球球王吴悠云南被群殴全过程 有组织有预谋？</span><span class="article_time">03-03</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28708.html"><span class="article_list">2014街球赛:吴悠精彩街球视频集锦</span><span class="article_time">12-27</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28687.html"><span class="article_list">美籍华人街球手DJ:精彩街球集锦 上演篮球技术</span><span class="article_time">06-23</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/12386.html"><span class="article_list">中国新晋街球王:周锐</span><span class="article_time">04-09</span></a></li>

                            </ul>
                            <span><a href="http://www.ilanqiu.com/street/star/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>

                        <div class="news-view-right">                        
                            <div class="news-header">
                                <h3>篮球百科</h3>
                            </div>
                            <div class="news">
                            <ul>
                            <li><a href="http://www.ilanqiu.com/basketball/37180.html"><span class="article_list">经典篮球游戏 《NBA2K10》</span><span class="article_time">07-15</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28838.html"><span class="article_list">篮球的常用颜色 篮球色谱对比</span><span class="article_time">02-26</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28785.html"><span class="article_list">国际篮联，奥运会篮球比赛和世界篮球锦标赛的比赛</span><span class="article_time">01-09</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28772.html"><span class="article_list"><strong>篮球比分篮球比分查询篮球比分权威网站合集！</strong></span><span class="article_time">01-06</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/28717.html"><span class="article_list">篮球鞋品牌大全,.篮球品牌大比拼</span><span class="article_time">12-29</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/16311.html"><span class="article_list">什么是基地跳投?基地跳投的含义</span><span class="article_time">10-28</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/16307.html"><span class="article_list">理解干拔与普通跳投的区别</span><span class="article_time">10-28</span></a></li>
<li><a href="http://www.ilanqiu.com/basketball/16293.html"><span class="article_list">干拔是什么意思？篮球中的干拔意义</span><span class="article_time">10-28</span></a></li>

                            </ul>
                            <span><a href="http://www.ilanqiu.com/wikipedia/" target="_blank">更多</a></span>
                            </div>
                        </div>
                        <div class="ceshi"></div>


                    </div>

              
            </div>
        </div>


    </div>


        <!--foot-->
    <div class="foot">

        <div class="clearfix">
            <div class="index-fenlei">
                <ul>
                    <li><a href='http://www.ilanqiu.com/news/cba/'>CBA篮球</a></li>
                    <li><a href='http://www.ilanqiu.com/news/nba/'>NBA篮球</a></li>
                    <li><a href='http://www.ilanqiu.com/technology/offense/'>进攻技术</a></li>
                    <li><a href='http://www.ilanqiu.com/technology/defense/'>防守技术</a></li>
                    <li><a href='http://www.ilanqiu.com/technology/base/'>基础技术</a></li>
                    <li><a href='http://www.ilanqiu.com/technology/experience/'>经验心得</a></li>
                    <li><a href='http://www.ilanqiu.com/strategy/'>篮球战术</a></li>
                    <li><a href='http://www.ilanqiu.com/street/star/'>街球明星</a></li>
                    <li><a href='http://www.ilanqiu.com/street/technology/'>街球技巧</a></li>
                    <li><a href='http://www.ilanqiu.com/street/video/'>街球视频</a></li>
                    <li><a href='http://www.ilanqiu.com/referee/'>篮球裁判</a></li>
                    <li><a href='http://www.ilanqiu.com/rules/'>篮球规则</a></li>
                    <li><a href='http://www.ilanqiu.com/video/dunk/'>扣篮视频</a></li>
                    <li><a href='http://www.ilanqiu.com/video/dribble/'>运球视频</a></li>
                    <li><a href='http://www.ilanqiu.com/music/nba/'>NBA音乐</a></li>
                    <li><a href='http://www.ilanqiu.com/music/street/'>街球配乐</a></li>
                    <li><a href='http://www.ilanqiu.com/equipment/news/'>装备资讯</a></li>
                    <li><a href='http://www.ilanqiu.com/equipment/wikipedia/'>装备百科</a></li>
                    <li><a href='http://www.ilanqiu.com/technology/offense/'>进攻技术</a></li>
                    <li><a href='http://www.ilanqiu.com/baby/'>篮球宝贝</a></li>
                </ul>
            </div>
        </div>


        <div class="link">
            <div class="t">
                <b>友情连接 </b>
                <b><a href="http://www.ilanqiu.com/link.html" target="_blank">所有连接</a></b>
                <b><a href="http://www.ilanqiu.com/plus/flink_add.php" target="_blank">申请友连</a></b>
            </div>

            <div class="linkrr">
                
                <a href='http://www.ilanqiu.com' target='_blank'>篮球技术网</a> 
                
                <a href='http://www.hwtiyu.com' target='_blank'>体育单招信息网</a> 
                
                <a href='http://www.zoomkobe.cn/forum.php' target='_blank'>科比之家</a> 
                
                <a href='http://www.ailhy.net' target='_blank'>足球直播吧</a> 
                
                <a href='http://wap.ilanqiu.com' target='_blank'>NBA录像</a> 
                
                <a href='http://www.ixueyi.com' target='_blank'>爱学艺</a> 
                
                <a href='http://sports.tom.com' target='_blank'>tom体育</a> 
                
                <a href='http://www.qm5.cc' target='_blank'>球迷网</a> 
                
                <a href='http://www.ilanqiu.com' target='_blank'>广东体育在线直播</a> 
                
                <a href='http://90a.cc/' target='_blank'>足球推荐</a> 
                
                <a href='http://www.wulin.cn' target='_blank'>中国武术</a> 
                
                <a href='http://www.zuqiuba.cc' target='_blank'>足球吧</a> 
                
                <a href='http://gjzq.tiqiu.com/' target='_blank'>国际足球</a> 
                
                <a href='http://www.mcdavid.com.cn' target='_blank'>迈克达威</a> 
                
                <a href='http://www.txzq.cc' target='_blank'>天下足球网</a> 
                
                <a href='https://www.055518.com' target='_blank'>全讯网新2</a> 
                   
            </div>

        </div> 

        <div class="foot1">    
            <div class="about">                
                <div class="abouta">
                    <A href="http://www.ilanqiu.com/basketball/596.html">关于站点</A> - 
                    <A href="http://www.ilanqiu.com/basketball/597.html">广告服务</A> - 
                    <A href="http://www.ilanqiu.com/basketball/598.html">版权隐私</A> - 
                    <A href="http://www.ilanqiu.com/basketball/599.html">免责声明</A> -  
                    <A href="http://www.ilanqiu.com/data/sitemap.html">网站地图</A> - 
                    <A href="/">篮球技术网</A> - 
                    <a href="javascript:window.external.AddFavorite('http://www.ilanqiu.com', '篮球技术网')">收藏本站</a> - 
                    <A href="#top">返回顶部</A>
                </div>
            </div>
            <div class="info">
                Powered by <A href="/">www.ilanqiu.com</A> &#169; 2004-2009 DesDev Inc.
            </div>
 
            <div class="info">
                Copyright &copy; 2002-2008 <a href="http://www.ilanqiu.com" title="提供专业篮球技术资讯和信息以及资料" target="_blank"><strong><span>篮球技术</span></strong></a> 版权所有
　<br>注:转载或复制文章资料,请注明出自<a href="http://www.ilanqiu.com" title="提供专业篮球技术方面的资讯和信息以及资料" target="_blank"><strong><span>篮球技术</span></strong></a>网!若侵犯您的权益,请及时联系站点管理员,将在24小时内删除侵犯您权益的文章或者资讯.站长QQ：6215634<br />网上备案：渝ICP备09020743号  服务商：阿里云<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id=cnzz_stat_icon_1261412572%3E%3C/span%3E%3Cscript src=" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1261412572%26show%3Dpic1 type=text/javascript%3E%3C/script%3E"));</script><br />
            </div>
            <div class="infotu">
            </div>
        </div>

    </div> 
        <!--foot结束-->    



<!----------------------start 轮播图js------------>
<script src="http://www.ilanqiu.com/templets/basketball/js/slide.js"></script>
<script>
    $('.swiper-container').slide({
        autoPlay: true
    });
</script>
<!----------------------end 轮播图js-------------->

<script type="text/javascript" src="http://www.ilanqiu.com/templets/default/js/97zzw.js"></script>
<script type="text/javascript">
$(function (){
    $(window).toTop({
        showHeight : 100,//设置滚动高度时显示
        speed : 200 //返回顶部的速度以毫秒为单位
    });
});
</script>
</body>
</html>