<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/10/30
  Time: 18:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Home Page</title>
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="vendors/easypiechart/jquery.easy-pie-chart.css" rel="stylesheet" media="screen">
    <link href="assets/styles.css" rel="stylesheet" media="screen">
    <script src="bootstrap/js/jquery-1.11.2.min.js"></script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>

</head>

<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">social mind舆情分析平台</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> 吴连伟 <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="person_info.html">个人中心</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="login.html">Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav">
                    <li class="">
                        <a href="heatIndex.html">热度指标</a>
                    </li>
                    <li class="">
                        <a href="emotionMap.html">情绪地图</a>
                    </li>
                    <li class="">
                        <a href="info_dectection.html">信息监测</a>
                    </li>
                    <li class="">
                        <a href="fullRetrival.html">全文检索</a>
                    </li>
                    <li class="">
                        <a href="event.html">全网事件分析</a>
                    </li>
                    <li class="">
                        <a href="makeReporter_1.html">简报制作</a>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="span3" id="sidebar">
    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
        <li>
            <a href="index.html"><i class="icon-chevron-right"></i> 全文检索</a>
        </li>
        <li>
            <a href="calendar.html"><i class="icon-chevron-right"></i> 热门事件</a>
        </li>
        <li>
            <a href="stats.html"><i class="icon-chevron-right"></i> 本单位/企业/个人/政府相关事件</a>
        </li>

    </ul>
</div>
<div class="container-fluid">
    <div class="row-fluid">

        <!--/span-->
        <div class="span9" id="content">
            <div class="row-fluid">

                <div class="row-fluid">
                    <!-- block -->
                    <div class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left">全文检索</div>
                        </div>
                        <div class="block-content collapse in">
                            <div align="center"><input type="text" name="name" data-required="1" class="span5 m-wrap" value="十九大召开" placeholder="实体、事件关键词全文检索"/>
                                <a href="#"><button class="btn btn-success" style="margin: -10px 0 0 10px;">搜索</button></a>
                            </div>
                        </div>
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left">系统互动</div>
                            <div class="muted pull-left" style="float:right;"><i class="icon-heart" style="color:red"></i>加入收藏
                                &nbsp&nbsp&nbsp可信度判断：<button class="btn btn-success btn-mini">真</button>
                                <button class="btn btn-danger btn-mini">假</button>
                                &nbsp&nbsp<button class="btn btn-success btn-mini">点赞</button></div>
                        </div>
                        <div class="btn-group" style="margin-left:2%;">
                            <button class="btn" style="margin-right: 140px;border:0">选择网站:</button>
                            <button class="btn">全部</button>
                            <button class="btn">微博</button>
                            <button class="btn">天涯</button>
                            <button class="btn">猫扑</button>
                            <button class="btn">豆瓣</button>
                            <button class="btn">搜狐新闻</button>
                        </div>

                    </div>
                    <!-- /block -->
                </div>
                <div class="row-fluid">
                    <!-- block -->
                    <div class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left">检索结果</div>
                            <div class="pull-right"><span class="badge badge-info">1,462</span>

                            </div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">

                                <div id="example_wrapper" class="dataTables_wrapper form-inline" role="grid">
                                    <div class="row"><div class="span6"><div id="example_length" class="dataTables_length">
                                        <label>
                                            <select size="1" name="example_length" aria-controls="example"  style="margin-left:40px; width: 60px;">
                                                <option value="10" selected="selected">10</option>
                                                <option value="25">25</option><option value="50">50</option>
                                                <option value="100">100</option></select> records per page</label>
                                    </div>
                                    </div>
                                        <div class="span6">

                                            <div class="dataTables_filter" id="example_filter">
                                                <label>Search: <input type="text" aria-controls="example"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered dataTable" id="example" aria-describedby="example_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_asc" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 206px;">
                                                内容</th>
                                            <th class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 300px;">
                                                来源</th>
                                            <th class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 278px;">
                                                相似文章</th>
                                            <th class="sorting" role="columnheader" tabindex="0" aria-controls="example" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 177px;">
                                                时间</th></tr>
                                        </thead>

                                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                                        <tr class="gradeA odd">
                                            <td class="  sorting_1">
                                                <div class="zhaiyao">
                                                    <img src="http://cdn.files.51wyq.cn/web/images/userlogo/app-more-icon-weibo.jpg" class="tx">
                                                    <div class="tit">
                                                        <a href="javascript:goView('原文','615087722242420123740026','wb3941998853867431','北京','4','1')">
                                                            嘉欣5590
                                                        </a>
                                                    </div>
                                                    <div class="summaryDiv">
                                                    </div>
                                                    <div class="zfCon">
                                                        本来我也只是对这个组合保持中立态度，井水不犯河水，各过各的就好了，但是，<font color="red">sunshine组合</font>全国后援会，所说的，真的是伤了四叶草得心，应援色还和三只的一样都是橙色，你们是想干吗？？？@<font color="red">Sunshine组合</font>全国后援会 http://t.cn/R2dyEu9
                                                    </div>
                                                    <div class="tdBottom rel">

                                                        <div class="handle handle-icon-group float_r">
                                                            <ul class="">
                                                                <li class="dropdown dropdown-sm dropdownArrow dropdownArrow-center dropdown_li_line dis-i" data-toggle="tooltip" data-placement="top" title="" data-original-title="分享">
                                                                    <a class="dropdown-toggle js-activated" href="javascript:void(0);" onclick="shareTo(1,'615087722242420123740026',this);" data-toggle="dropdown" aria-expanded="false">
                                                                        <i class="icon-fenxiang-o"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu" style="margin-left: -35px;">
                                                                        <div class="fenxiang clearfix" style="width: 92px;">
                                                                            <a href="javascript:void(0)" class="icon icon_wb" title="微博"></a>
                                                                            <a href="javascript:void(0)" onclick="shareToWeixi(this)" class="icon icon_wx" title="微信"></a>
                                                                            <input type="hidden" value="" style="display: none">
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li style="display:none;">
                                                                    <a href="javascript:goDeleteSingle('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="已收藏">
                                                                        <i class="icon-heart"></i>
                                                                    </a>
                                                                </li>

                                                                <li style="display:none;">
                                                                    <a href="javascript:goDeleteSingle('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="已收藏">
                                                                        <i class="icon-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a class="addCollect orange" href="javascript:void(0);" onmouseover="setSelectIdVal('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="加入收藏">
                                                                        <i class="icon-heart-o"></i>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="javascript:showMailFrame()" onmouseover="setSelectIdVal('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="邮件">
                                                                        <i class="icon-email-o"></i>
                                                                    </a>
                                                                </li>


                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td class=" ">微博</td>
                                            <td class=" ">100+</td>
                                            <td class="center ">2017-10-10 11:11:11</td>
                                        </tr>
                                        <tr class="gradeA odd">
                                            <td class="  sorting_1">
                                                <div class="zhaiyao">
                                                    <img src="http://cdn.files.51wyq.cn/web/images/userlogo/app-more-icon-weibo.jpg" class="tx">
                                                    <div class="tit">
                                                        <a href="javascript:goView('原文','615087722242420123740026','wb3941998853867431','北京','4','1')">
                                                            嘉欣5590
                                                        </a>
                                                    </div>
                                                    <div class="summaryDiv">
                                                    </div>
                                                    <div class="zfCon">
                                                        本来我也只是对这个组合保持中立态度，井水不犯河水，各过各的就好了，但是，<font color="red">sunshine组合</font>全国后援会，所说的，真的是伤了四叶草得心，应援色还和三只的一样都是橙色，你们是想干吗？？？@<font color="red">Sunshine组合</font>全国后援会 http://t.cn/R2dyEu9
                                                    </div>
                                                    <div class="tdBottom rel">

                                                        <div class="handle handle-icon-group float_r">
                                                            <ul class="">
                                                                <li class="dropdown dropdown-sm dropdownArrow dropdownArrow-center dropdown_li_line dis-i" data-toggle="tooltip" data-placement="top" title="" data-original-title="分享">
                                                                    <a class="dropdown-toggle js-activated" href="javascript:void(0);" onclick="shareTo(1,'615087722242420123740026',this);" data-toggle="dropdown" aria-expanded="false">
                                                                        <i class="icon-fenxiang-o"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu" style="margin-left: -35px;">
                                                                        <div class="fenxiang clearfix" style="width: 92px;">
                                                                            <a href="javascript:void(0)" class="icon icon_wb" title="微博"></a>
                                                                            <a href="javascript:void(0)" onclick="shareToWeixi(this)" class="icon icon_wx" title="微信"></a>
                                                                            <input type="hidden" value="" style="display: none">
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li style="display:none;">
                                                                    <a href="javascript:goDeleteSingle('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="已收藏">
                                                                        <i class="icon-heart"></i>
                                                                    </a>
                                                                </li>

                                                                <li style="display:none;">
                                                                    <a href="javascript:goDeleteSingle('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="已收藏">
                                                                        <i class="icon-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a class="addCollect orange" href="javascript:void(0);" onmouseover="setSelectIdVal('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="加入收藏">
                                                                        <i class="icon-heart-o"></i>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="javascript:showMailFrame()" onmouseover="setSelectIdVal('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="邮件">
                                                                        <i class="icon-email-o"></i>
                                                                    </a>
                                                                </li>


                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td class=" ">微博</td>
                                            <td class=" ">100+</td>
                                            <td class="center ">2017-10-10 11:11:11</td>
                                        </tr>
                                        <tr class="gradeA odd">
                                            <td class="  sorting_1">
                                                <div class="zhaiyao">
                                                    <img src="http://cdn.files.51wyq.cn/web/images/userlogo/app-more-icon-weibo.jpg" class="tx">
                                                    <div class="tit">
                                                        <a href="javascript:goView('原文','615087722242420123740026','wb3941998853867431','北京','4','1')">
                                                            嘉欣5590
                                                        </a>
                                                    </div>
                                                    <div class="summaryDiv">
                                                    </div>
                                                    <div class="zfCon">
                                                        本来我也只是对这个组合保持中立态度，井水不犯河水，各过各的就好了，但是，<font color="red">sunshine组合</font>全国后援会，所说的，真的是伤了四叶草得心，应援色还和三只的一样都是橙色，你们是想干吗？？？@<font color="red">Sunshine组合</font>全国后援会 http://t.cn/R2dyEu9
                                                    </div>
                                                    <div class="tdBottom rel">

                                                        <div class="handle handle-icon-group float_r">
                                                            <ul class="">
                                                                <li class="dropdown dropdown-sm dropdownArrow dropdownArrow-center dropdown_li_line dis-i" data-toggle="tooltip" data-placement="top" title="" data-original-title="分享">
                                                                    <a class="dropdown-toggle js-activated" href="javascript:void(0);" onclick="shareTo(1,'615087722242420123740026',this);" data-toggle="dropdown" aria-expanded="false">
                                                                        <i class="icon-fenxiang-o"></i>
                                                                    </a>
                                                                    <div class="dropdown-menu" style="margin-left: -35px;">
                                                                        <div class="fenxiang clearfix" style="width: 92px;">
                                                                            <a href="javascript:void(0)" class="icon icon_wb" title="微博"></a>
                                                                            <a href="javascript:void(0)" onclick="shareToWeixi(this)" class="icon icon_wx" title="微信"></a>
                                                                            <input type="hidden" value="" style="display: none">
                                                                        </div>
                                                                    </div>
                                                                </li>

                                                                <li id="icltok_615087722242420123740026" style="display:none;">
                                                                    <a href="javascript:goDeleteSingle('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="已收藏">
                                                                        <i class="icon-heart"></i>
                                                                    </a>
                                                                </li>

                                                                <li id="ic_615087722242420123740026" style="display:none;">
                                                                    <a href="javascript:goDeleteSingle('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="已收藏">
                                                                        <i class="icon-heart"></i>
                                                                    </a>
                                                                </li>
                                                                <li id="iclt_615087722242420123740026">
                                                                    <a class="addCollect orange" href="javascript:void(0);" onmouseover="setSelectIdVal('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="加入收藏">
                                                                        <i class="icon-heart-o"></i>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="javascript:showMailFrame()" onmouseover="setSelectIdVal('615087722242420123740026');" data-toggle="tooltip" data-placement="top" title="" data-original-title="邮件">
                                                                        <i class="icon-email-o"></i>
                                                                    </a>
                                                                </li>


                                                            </ul>
                                                        </div>

                                                    </div>
                                                </div>
                                            </td>
                                            <td class=" ">微博</td>
                                            <td class=" ">100+</td>
                                            <td class="center ">2017-10-10 11:11:11</td>
                                        </tr>

                                        </tbody></table><div class="row"><div class="span6"></div><div class="span6"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="prev disabled"><a href="#">← Previous</a></li><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li><a href="#">4</a></li><li><a href="#">5</a></li><li class="next"><a href="#">Next → </a></li></ul></div></div></div></div>
                            </div>
                        </div>
                    </div>
                    <!-- /block -->
                </div>

                <div class="row-fluid">
                </div>
            </div>
        </div>
        <hr>
        <footer>
            <p>&copy; Vincent Gabriel 2013</p>
        </footer>
    </div>
</div>
    <!--/.fluid-container-->
    <script src="vendors/jquery-1.9.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="vendors/easypiechart/jquery.easy-pie-chart.js"></script>
    <script src="assets/scripts.js"></script>
    <script>
        $(function() {
            // Easy pie charts
            $('.chart').easyPieChart({animate: 1000});
        });
    </script>
</body>

</html>
