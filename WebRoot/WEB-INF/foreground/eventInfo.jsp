<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/10/30
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>foreground/"/>
    <title>全网事件分析 - socialmind大平台</title>
    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    <link href="assets/styles.css" rel="stylesheet" media="screen">
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="vendors/flot/excanvas.min.js"></script><![endif]-->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="vendors/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body style="overflow: hidden">
<!-- 引入头模板 -->
<jsp:include page="/static/fore_header.jsp"/>
<div class="container-fluid"style="margin-top: 4%;">
    <div class="row-fluid">
        <div class="span3" id="sidebar">
            <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                <li>
                    <a onclick="document.getElementById('001').scrollIntoView();"><i class="icon-chevron-right"></i> 事件简介</a>
                </li>
                <li>
                    <a onclick="document.getElementById('002').scrollIntoView();"><i class="icon-chevron-right"></i>事件走势</a>
                </li>
                <li>
                    <a onclick="document.getElementById('003').scrollIntoView();"><i class="icon-chevron-right"></i> 网站统计</a>
                </li>
                <li>
                    <a onclick="document.getElementById('004').scrollIntoView();"><i class="icon-chevron-right"></i>数据类型</a>
                </li>
                <li>
                    <a onclick="document.getElementById('005').scrollIntoView();"><i class="icon-chevron-right"></i>关键词云</a>
                </li>
                <li>
                    <a onclick="document.getElementById('006').scrollIntoView();"><i class="icon-chevron-right"></i>热门信息</a>
                </li>
                <li>
                    <a onclick="document.getElementById('007').scrollIntoView();"><i class="icon-chevron-right"></i>热点网民</a>
                </li>
                <li>
                    <a onclick="document.getElementById('008').scrollIntoView();"><i class="icon-chevron-right"></i> 传播路径</a>
                </li>
                <li>
                    <a onclick="document.getElementById('009').scrollIntoView();"><i class="icon-chevron-right"></i>关联词</a>
                </li>
                <li>
                    <a onclick="document.getElementById('010').scrollIntoView();"><i class="icon-chevron-right"></i>网民观点</a>
                </li>
                <li>
                    <a onclick="document.getElementById('011').scrollIntoView();"><i class="icon-chevron-right"></i> 舆情总结</a>
                </li>
            </ul>
        </div>
        <!--/span-->
        <c:forEach items="${event}" var="e" varStatus="sts">
        <div class="span9" id="content" style="height:90%; overflow-y:auto">
            <!-- morris stacked chart -->
            <div class="row-fluid">
                <!-- block -->
                <div class="alert alert-info alert-block">
                    <div style="margin-left:40%" id="objectName"><a style="size: 60pc">${e.object.name}</a></div>
                </div>
                <div class="alert alert-block">
                    <h1 class="alert-heading" id="001">事件简介</h1>
                        ${e.event.introduction}
                </div>
                </c:forEach>
                <div class="block" >
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="002">事件走势</div>

                    </div>

                    <div class="block-content collapse in">
                        <div class="block-content collapse in" style="height:40%;overflow-y:auto">
                            <div>

                                <strong>开始</strong>
                                <br/>
                                <c:forEach items="${artileList}" var="al" varStatus="sts">

                                    <img src="./images/11.png"  width="20px"></img>[${al.postTime}] <a href="<%=basePath%>event/articleInfo?articleId=${al.articleId}">${al.title}</a>
                                    <a href="http://localhost:8080/socialmind/infodetection/click?objectId=${objectId}&&object=${al.websiteEntity.websiteName}">【${al.websiteEntity.websiteName}】</a>
                                    <br/>

                                </c:forEach>
                                <strong>待续</strong>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="003">网站统计</div>

                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <div id="website_statistic" style="width:1200px;height: 400px;"></div>
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>


            <!-- morris bar & donut charts -->
            <div class="row-fluid section">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="004">数据类型</div>
                    </div>
                    <div class="block-content collapse in">
                        <%--<div class="span6 chart">
                            <h5>媒体活跃度</h5>
                            <div id="hero-bar" style="height: 250px;"></div>
                        </div>--%>
                            <div class="span6 chart">
                                <h5>境内外分布</h5>
                                <div id="area" style="width:60%;height:250px"></div>
                            </div>
                        <div class="span5 chart">
                            <h5>媒体来源比</h5>
                            <div id="media" style="width:100%;height:250px"></div>
                        </div>

                            <%--<div class="span6 chart">
                                <h5>境内外分布</h5>
                                <div id="mediaType" style="width:60%;height:250px"></div>
                            </div>--%>
                        <%--<div class="span5 chart">
                            <h5>敏感分析</h5>
                            <div id="sensitive" style="width:60%;height: 250px;"></div>
                        </div>--%>
                    </div>
                </div>
                <!-- /block -->
            </div>



            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="005">关键词云</div>
                        <%--<div class="pull-right"><span class="badge badge-warning">View More</span>

                        </div>--%>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <div id="keywords" style="width: 1000px;height: 400px;" ></div>
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>

            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="006">热门信息</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>标题</th>
                                    <th>来源站点</th>
                                    <th>时间</th>
                                    <th>转发数</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${hotInformation}" var="h" varStatus="sts">
                                    <tr>
                                        <%--<a href="<%=basePath%>event/articleInfo?articleId=${h.articleId}">--%>
                                            <%--<a href="http://localhost:8080/socialmind/infodetection/click?objectId=${objectId}&&object=${h.websiteEntity.websiteName}">--%>
                                            <td><a href="<%=basePath%>event/articleInfo?articleId=${h.articleId}">${h.title}</a></td>
                                            <td><a href="http://localhost:8080/socialmind/infodetection/click?objectId=${objectId}&&object=${h.websiteEntity.websiteId}">${h.websiteEntity.websiteId}</a></td>
                                        <td>${h.postTime}</td>
                                        <td>${h.recommendNumber}</td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>

            <!-- morris graph chart -->
            <div class="row-fluid section">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="007" >热点网民</div>

                    </div>
                    <div class="block-content collapse in">
                        <div class="block-content collapse in">
                            <c:forEach items="${hotAuthor}" var="h" varStatus="sts">
                            <div class="span3">
                                <div class="chart" data-percent="73">
                                    <ul>
                                        <div><img src="./images/01.jpg" width="60px" height="60px"></img> </div>
                                        <li><span class="label label-info"><a href="<%=basePath%>authorInfo?authorId=${h.authorId}">${h.name}</a></span></li>
                                        <li><span class="label label-info">发帖数：${h.elitePostNumber}</span></li>
                                    </ul>
                                </div>
                            </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>



            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="008">传播路径</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <div id="transfer" style="width:900px;height: 600px;float: left"></div>
                            <div id="graph" style="width:200px;height: 500px;float: right"></div>
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>

            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="009">关联词</div>
                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <div id="keyword_related" style="width:1000px;height: 600px;"></div>
                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>

            <div class="row-fluid">
                <!-- block -->
                <div class="block">
                    <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left" id="010">网民观点</div>
                    </div>
                    <div class="block-content collapse in">

                    </div>
                    <div class="block-content collapse in">
                        <div class="span12">
                            <div id="opinion" style="width:1000px;height: 250px;"></div>
                            <c:forEach items="${hotOpinionList}" var="ac" varStatus="sts">

                                <c:forEach items="${ac}" var="o" varStatus="sts">

                                    <c:if test="${o.postTime == '新闻' }">
                                        <div class="alert">
                                        <h4 class="alert-heading">观点${sts.index+1}：${o.title} 【来自网友：${o.content}】 --${o.articleId} </h4>
                                        </div>
                                    </c:if>
                                    <c:if test="${o.postTime == '论坛' }">
                                        <div class="alert alert-info">
                                            <h4 class="alert-heading">观点${sts.index+1}：${o.title} 【${o.content}】--${o.articleId}</h4>
                                        </div>
                                    </c:if>
                                    <c:if test="${o.postTime == '博客' }">
                                        <div class="alert alert-success">
                                            <h4 class="alert-heading">观点${sts.index+1}：${o.title} 【${o.content}】--${o.articleId}</h4>
                                        </div>
                                    </c:if>
                                    <c:if test="${o.postTime == '社交媒体' }">
                                        <div class="alert alert-error">
                                            <h4 class="alert-heading">观点${sts.index+1}：${o.title} 【${o.content}】--${o.articleId}</h4>
                                        </div>
                                    </c:if>
                                    <c:if test="${o.postTime == '政府' }">
                                        <div >
                                            <h4 class="alert-heading">观点${sts.index+1}：${o.title} 【${o.content}】--${o.articleId}</h4>
                                        </div>
                                    </c:if>
                                </c:forEach>

                            </c:forEach>

                        </div>
                    </div>
                </div>
                <!-- /block -->
            </div>

            <div class="alert alert-block">
                <c:forEach items="${event}" var="e">
                <h4 class="alert-heading" id="011">舆情总结</h4>
                    &nbsp;&nbsp;&nbsp;&nbsp;${e.event.eventSummary}
                </c:forEach>
                <div class="alert alert-success">
                    <c:forEach items="${reliablity}" var="r">
                    综合信息可得，该事件可信度为&nbsp;&nbsp;<strong>${r.indicatorValue}</strong>
                    </c:forEach>
                </div>
            </div>
        </div>

    </div>
    <hr>
    <!-- 引入尾部模板 -->
    <jsp:include page="/static/fore_footer.jsp"></jsp:include>
</div>
<script>
    function go(){//js获取超链接的id，取得里面的html内容
        var s = document.getElementById("name").innerHTML;
        window.open('https://www.baidu.com/s?wd=' + s);
    }
</script>
<!--/.fluid-container-->
<link rel="stylesheet" href="vendors/morris/morris.css">
<script src="vendors/flot/echarts.min.js"></script>
<%--<script src="vendors/flot/echarts-all.js"></script>--%>
<script src="vendors/jquery-1.9.1.min.js"></script>
<script src="vendors/jquery.knob.js"></script>
<script src="vendors/raphael-min.js"></script>

<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="vendors/flot/jquery.flot.js"></script>
<script src="vendors/flot/jquery.flot.categories.js"></script>
<script src="vendors/flot/jquery.flot.pie.js"></script>
<script src="vendors/flot/jquery.flot.time.js"></script>
<script src="vendors/flot/jquery.flot.stack.js"></script>
<script src="vendors/flot/jquery.flot.resize.js"></script>
<script src="assets/scripts.js"></script>
<script src="vendors/echarts-wordcloud.min.js"></script>

<script type="text/javascript" src="vendors/flot/jquery.js"></script>

<script  type="text/javascript">

    var keyWords = JSON.parse('${keywords}');

    //基于准备好的dom,初始化echarts实例
    var myChart = echarts.init(document.getElementById('keywords'));
    //指定图表的配置项和数据
    var  option = {
        title: {
            text: '',
            link: 'https://www.baidu.com/s?wd=' + encodeURIComponent('ECharts'),
            x: 'center',
            textStyle: {
                fontSize: 23
            }

        },
        backgroundColor: '#F7F7F7',
        tooltip: {
            show: true
        },
        toolbox: {
            feature: {
                saveAsImage: {
                    iconStyle: {
                        normal: {
                            color: '#FFFFFF'
                        }
                    }
                }
            }
        },
        series: [{
            name: '',
            type: 'wordCloud',
            //size: ['9%', '99%'],
            sizeRange: [6, 66],
            //textRotation: [0, 45, 90, -45],
            rotationRange: [-45, 90],
            //shape: 'circle',
            textPadding: 0,
            autoSize: {
                enable: true,
                minSize: 6
            },
            roam: true, //禁止用鼠标滚轮缩小放大效果
            textStyle: {
                normal: {
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                            '#F3A43B','#FE8463','#9BCA63','#FAD860','#60C0DD',
                            /*'#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0',
                            '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B'*/
                        ];
                        return colorList[params.dataIndex]
                    },
                    /*color: function() {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }*/
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: keyWords
        }]
    };


//    option.series[0].data = keyWords;

    myChart.setOption(option);
    myChart.on('click', function (params) {
        window.open('https://www.baidu.com/s?wd=' + encodeURIComponent(params.name));

    });
</script>
<script>
    //基于准备好的dom,初始化echarts实例
    var myChart1 = echarts.init(document.getElementById('website_statistic'));
    var option1 = {
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            data:${webs}
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : ${periodList}

            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series :${websiteStatistic}

    };
    // 为echarts对象加载数据
    myChart1.setOption(option1);

</script>
<input type="hidden" value="${hotOpinionList}">
<script>
    //基于准备好的dom,初始化echarts实例
    var myChart2 = echarts.init(document.getElementById('media'));
    var option2 = {
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient : 'horizontal',
            y : 'top',
            data:['博客', '新闻','政府', '论坛', '社交媒体']
        },
        toolbox: {
            show: true,
            feature: {
                dataView: {show: true, readOnly: false},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'访问来源',
                type:'pie',
                radius : ['50%', '70%','70%','70%','70%'],
                itemStyle : {
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                            '#F3A43B','#FE8463','#9BCA63','#FAD860','#60C0DD',
                            /*'#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0',
                            '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B'*/
                        ];
                        return colorList[params.dataIndex]
                    },
                    normal : {
                        label : {
                            show : false
                        },
                        labelLine : {
                            show : false
                        }
                    },
                    emphasis : {
                        label : {
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '30',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:${mediaSource}

            }
        ]
    };

    // 为echarts对象加载数据
    myChart2.setOption(option2);
    myChart2.on('click', function (params) {
        window.open('http://localhost:8080/socialmind/infodetection/click?objectId=${objectId}&&object=' + params.name);
    });
</script>
<script>
    //基于准备好的dom,初始化echarts实例
    var myChart3 = echarts.init(document.getElementById('area'));
    var option3 = {
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient : 'vertical',
            x : 'left',
            data:['国内','国外']
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'center',
                            max: 1548
                        }
                    }
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'访问来源',
                type:'pie',
                radius : ['50%', '70%'],
                itemStyle : {
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                            '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                            /*'#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0',
                            '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B'*/
                        ];
                        return colorList[params.dataIndex]
                    },
                    normal : {
                        label : {
                            show : false
                        },
                        labelLine : {
                            show : false
                        }
                    },
                    emphasis : {
                        label : {
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '30',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:${areaSource}

            }
        ]
    };

    // 为echarts对象加载数据
    myChart3.setOption(option3);
    myChart3.on('click', function (params) {
        <%--window.open('http://localhost:8080/socialmind/infodetection/click?objectId=${objectId}&&object=' + params.name);--%>
    });
</script>

<script  type="text/javascript">
    /*var myChart4 = echarts.init(document.getElementById('mediaType'));
    var option4 = {
        color: ['#3398DB'],
        tooltip : {
            trigger: 'axis',
            axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                data : [mediaList],
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'直接访问',
                type:'bar',
                barWidth: '60%',
                data:[mediaSource]
            }
        ]
    };

    /!*var option4 = {
        title: {
            x: 'center',
            text: '',
            subtext: '',
            link: 'http://echarts.baidu.com/doc/example.html'
        },
        tooltip: {
            trigger: 'item'
        },

        toolbox: {
            show: true,
            feature: {
                dataView: {show: true, readOnly: false},
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        calculable: true,
        grid: {
            borderWidth: 0,
            y: 80,
            y2: 60
        },
        xAxis: [
            {
                type: 'category',
                show: false,
                data: ['博客', '新闻','政府', '论坛', '社交媒体']
            }
        ],
        yAxis: [
            {
                type: 'value',
                show: false
            }
        ],
        series: [
            {
                name: '媒体类型',
                type: 'bar',
                itemStyle: {
                    normal: {
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = [
                                '#FE8463','#60C0DD','#9BCA63','#FAD860','#F3A43B',
                                /!*'#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0',
                                '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B'*!/
                            ];
                            return colorList[params.dataIndex]
                        },
                        label: {
                            show: true,
                            position: 'top',
                            formatter: '{b}\n{c}'
                        }
                    }
                },
                data:
                markPoint: {
                    tooltip: {
                        trigger: 'item',
                        backgroundColor: 'rgba(0,0,0,0)',
                        formatter: function(params){
                            return '<img src="'
                                + params.data.symbol.replace('image://', '')
                                + '"/>';
                        }
                    },
                    data: [

                        {xAxis:0, y: 350, name:'Chord', symbolSize:20, symbol: ''},
                        {xAxis:1, y: 350, name:'Force', symbolSize:20, symbol: ''},
                        {xAxis:2, y: 350, name:'Map', symbolSize:20, symbol: ''},
                        {xAxis:3, y: 350, name:'Gauge', symbolSize:20, symbol: ''},
                        {xAxis:4, y: 350, name:'Funnel', symbolSize:20, symbol: ''},
                    ]
                }
            }
        ]
    };*!/
    myChart4.setOption(option4);*/
</script>

<script>
    var myChart7 = echarts.init(document.getElementById('opinion'));
    var option7 = {
        title : {
            text: '媒体观点分析',
            subtext: '',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient : 'vertical',
            x : 'left',
            data:${mediaList}
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'left',
                            max: 1548
                        }
                    }
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'访问来源',
                type:'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:${opinionSource}
            }
        ]
    };
    myChart7.setOption(option7);
    myChart7.on('click', function (params) {
        window.open('http://localhost:8080/socialmind/infodetection/click?objectId=${objectId}&&object=' + params.name);
    });
</script>
<script>
    //基于准备好的dom,初始化echarts实例
    /*var myChart8 = echarts.init(document.getElementById('sensitive'));
    var option8 = {
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient : 'vertical',
            x : 'left',
            data:['敏感','非敏感']
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                magicType : {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'center',
                            max: 1548
                        }
                    }
                },
                restore : {show: true},
                saveAsImage : {show: true}
            }
        },
        calculable : true,
        series : [
            {
                name:'访问来源',
                type:'pie',
                radius : ['50%', '70%'],
                itemStyle : {
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                            '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                            /!*'#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0',
                            '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B'*!/
                        ];
                        return colorList[params.dataIndex]
                    },
                    normal : {
                        label : {
                            show : false
                        },
                        labelLine : {
                            show : false
                        }
                    },
                    emphasis : {
                        label : {
                            show : true,
                            position : 'center',
                            textStyle : {
                                fontSize : '30',
                                fontWeight : 'bold'
                            }
                        }
                    }
                },
                data:

            }
        ]
    };

    // 为echarts对象加载数据
    myChart8.setOption(option8);*/
</script>
<script type="text/javascript">
    //基于准备好的dom,初始化echarts实例
    var myChart9 = echarts.init(document.getElementById("transfer"));
    //指定图表的配置项和数据
    var category = JSON.parse('${category}');
    var categories = [];

    for (var c_num = 0; c_num < category.length;  c_num++) {
        categories[c_num] = {
            name: category[c_num]
        }
    }

    var nodesAndEdges = JSON.parse('${nodesAndEdges}');

    var nodes = nodesAndEdges['nodes'];
    var edges = nodesAndEdges['edges'];


    //不同阈值下的SNA列表
    var SNAList = JSON.parse('${SNAList}');//会导致$ref错误
    var graphSNA =SNAList[4]['graphSNA'];
    var nodeSNAList =SNAList[4]['nodeSNAList'];



    var titleMap = new Map();
    var numMap = new Map();
    var tableMap = new Map();

    //获取每个阈值下节点的最大值
    var max_num = [];
    var slice_num = nodes[0]['num'].length;
    for(var x = 0; x < slice_num; x++) {
        max_num[x] = 0;
        for (var xi = 0; xi < nodes.length; xi++) {
            if(nodes[xi]['num'][x] > max_num[x]) {
                max_num[x] = nodes[xi]['num'][x];
            }
        }
    }

    var dataSliceList = [];
    var layout = [];
    for(var y = 0; y < slice_num; y++) {

        //第一张采用环形布局，其余的采用力导向图
        if (y === 0) {
            layout.push('circular');
        } else {
            layout.push('force');
        }

        var data = [];
        for (var i = 0; i < nodes.length; i++) {
            if (y === 0) {
                titleMap.set(nodes[i]['id'], nodes[i]['title']);
                numMap.set(nodes[i]['id'], nodes[i]['num']);
                tableMap.set(nodes[i]['id'], nodes[i]['table']);
            }

            data.push({
                "name": nodes[i]['id'],
                "symbolSize": (nodes[i]['num'][y] + 1) / (max_num[y] + 1),
                "draggable": true,
                "value": [nodes[i]['title'], nodes[i]['num'][y]],
                "category": nodes[i]['website'],
                "label": {
                    "normal": {
                        "show": true
                    }
                }
            });
        }
        dataSliceList.push(data)
    }

    var edgeOptions = [];
    for(var ii = 0; ii < slice_num; ii++) {
        edgeOptions.push({
            visualMap: {
                max: max_num[ii]
            },
            series: {
                layout: layout[ii],
                edges: edges[ii],
                data: dataSliceList[ii],
                nodeSNAList:SNAList[ii]['nodeSNAList'],
                graphSNA:SNAList[ii]['graphSNA']
            }
        })
    }

    var timeLineData = [];
    for(var s = 0; s <= 1; s += 0.1) {
        timeLineData.push(s.toFixed(1))
    }


    var tip1 = graphSNA['degreeCentralization'];
    var tip2 = graphSNA['closeCentralization'];
    var tip3 = graphSNA['scale'];
    var tip4 = graphSNA['density'];
    var tip5 = graphSNA['diameter'];
    var tip6 = graphSNA['averageength'];
    var tip7 = graphSNA['correlationDegree'];
    var tip8 = graphSNA['rankDegree'];

    var option9 = {
        baseOption: {
            timeline: {
                data: timeLineData,
                axisType: 'category',
                currentIndex: 4,

            },

            visualMap: {
                left: 'right',
                top: '10%',
                dimension: 1,
                hoverLink: true,
                min: 0,
//                max: max_num,
                itemWidth: 30,
                itemHeight: 120,
                calculable: true,
                precision: 1,
                text: ['大小'],
                textGap: 30,
                textStyle: {
                    color: '#b90c25'
                },
                inRange: {
                    symbolSize: [10, 70]
                },
                outOfRange: {
                    symbolSize: [10, 70],
                    color: ['rgba(255,255,255,.2)']
                },
                controller: {
                    inRange: {
                        color: ['#a2c6f8']
                    },
                    outOfRange: {
                        color: ['#444']
                    }
                }
            },
            tooltip: {
                show: true,
//                position: function (pos, params, dom, rect, size) {
//                    // 鼠标在左侧时 tooltip 显示到右侧，鼠标在右侧时 tooltip 显示到左侧。
//                    var obj = {top: 60};
//                    obj[['left', 'right'][+(pos[0] < size.viewSize[0] / 2)]] = 5;
//                    return obj;
//                },
                hideDelay: 600,
                formatter: function (params, ticket, callback) {
                    var result = '';
                    if (params.dataType == 'node') {
                        var id = params.name;
                        result = "<span style='color: sienna'>标题：</span> " + titleMap.get(id).replace(/(.{25})/g, '$1<br />') + "<br />";

                        result +="出度  "+nodeSNAList[id]['outdegree']+"<br />";
                        result +="入度  "+nodeSNAList[id]['indegree']+"<br />";
                        result +="相对中心度  "+nodeSNAList[id]['relativeCentrality']+"<br />"
                        result +="绝对接近中心度  "+nodeSNAList[id]['aCloseCentrality']+"<br />"
                        result +="相对接近中心度  "+nodeSNAList[id]['rCloseCentrality']+"<br />"

                        $.ajax({
                            type: "post",
//                            url: "tooltipContent",
                            data: {'table': tableMap.get(id), 'articleID': id},
                            contentType: "application/x-www-form-urlencoded; charset=utf-8",
                            success: function (msg) {
//                                var content = msg.replace(/(.{30})/g, '$1<br />'); //换行显示

                                var newStr = '';
                                if(msg.length <= 30) {
                                    newStr = msg;
                                }
                                var t = 30;
                                for (; t < msg.length; t+=30) {
                                    var tmp = msg.substring(t - 30, t);
                                    newStr = newStr + '<br />' + tmp;
                                }
                                result = result + newStr + "<br />" + msg.substring(t - 30, msg.length);
                                callback(ticket, result);
                            },
                            error: function (msg) {

                            }
                        });
                        return result;
                    } else if (params.dataType == 'edge') {
                        var src_id = params.data.source;
                        var tar_id = params.data.target;
                        result = "<span style='color: #b90c25'>source:</span> " + titleMap.get(src_id);
                        result += "<br />"
                        result += "<span style='color: #d54ac9'>target: </span>" + titleMap.get(tar_id);

                        return result;
                    }
                }
            },
            legend: [{
                // selectedMode: 'single',
                data: categories.map(function (a) {
                    return a.name;
                })
            }],
            toolbox: {
                show: true,
                feature: {
                    dataView: {
                        show: true,
                        readOnly: true
                    },
                    restore: {
                        show: true
                    },
                    saveAsImage: {
                        show: true
                    }
                }
            },
            animationDuration: 1500,
            animationEasingUpdate: 'quinticInOut',
            series: [{
//                name: '媒体',
                type: 'graph',
//                layout: 'force',

                force: {
                    initLayout: 'circular',
                    edgeLength: 100,
                    repulsion: 300,
                    gravity: 0.2,
                    layoutAnimation: true
                },
//                data: data,
//                edges: edges,
                categories: categories,
                focusNodeAdjacency: true,
                roam: true,
                label: {
                    normal: {
                        textStyle: {
                            color: ["#bda29a"],
                            fontStyle: 'oblique',
                            fontWeight: 'lighter'
                        },
                        show: false,
                        position: 'right',
                        formatter: function (params) {
                            return params.value[0];
                        }
                    }
                },
                edgeSymbol: ['none', 'arrow'],
                lineStyle: {
                    normal: {
                        color: "source",
                        width: 3,
                        curveness: 0.3
                    }
                }
            }]
        },
        options:edgeOptions,
    };


    myChart9.setOption(option9);
</script>
<script>
    var myChart10 = echarts.init(document.getElementById("graph"));

    var option10 = {
        series: [
            {
                type: 'scatter',
                data: [[0,0]],
                symbolSize: 1,
                label: {
                    normal: {
                        show: true,
                        formatter: [
                            '            {term|图说}',
                            ' 度数中心势  ：' +tip1,
                            ' 接近中心势  ：' + tip2,
                            ' 图规模 ：' + tip3,
                            ' 图密度 ：' + tip4,
                            ' 直径 ：' +tip5,
                            ' 平均长度 ：' + tip6,
                            ' 关联度 ：' + tip7,
                            ' 等级度 ：'+tip8,
                        ].join('\n'),
                        backgroundColor: '#eee',
                        // borderColor: '#333',
                        borderColor: 'rgb(199,86,83)',
                        borderWidth: 2,
                        borderRadius: 5,
                        padding: 10,
                        color: '#000',
                        fontSize: 14,
                        shadowBlur: 3,
                        shadowColor: '#888',
                        shadowOffsetX: 0,
                        shadowOffsetY: 3,
                        lineHeight: 30,
                        rich: {
                            term: {
                                fontSize: 18,
                                color: 'rgb(199,86,83)'
                            },
                            fregment1: {
                                backgroundColor: '#000',
                                color: 'yellow',
                                padding: 5
                            },
                            fregment2: {
                                backgroundColor: '#339911',
                                color: '#fff',
                                borderRadius: 15,
                                padding: 5
                            }
                        }
                    }
                }
            }
        ],
        xAxis: {
            axisLabel: {show: false},
            axisLine: {show: false},
            splitLine: {show: false},
            axisTick: {show: false},
            min: -1,
            max: 1
        },
        yAxis: {
            axisLabel: {show: false},
            axisLine: {show: false},
            splitLine: {show: false},
            axisTick: {show: false},
            min: -1,
            max: 1
        }
    };
    myChart10.setOption(option10);

</script>

<script>
    var myChart12 = echarts.init(document.getElementById("keyword_related"));

    /*var  option12 = {
    title: {
        text: '网络拓扑信息',
    },
    tooltip:{},
    animationDurationUpdate: 1500,
    animationEasingUpdate: 'quinticInOut',
    series : [
        {
            type: 'graph',
            layout: 'none',
            symbolSize: 50,//图形的大小（示例中的圆的大小）
            roam: true,//鼠标缩放及平移
            focusNodeAdjacency:true,//是否在鼠标移到节点上的时候突出显示节点以及节点的边和邻接节点
            label: {
                normal: {
                    show: true ,  //控制非高亮时节点名称是否显示
                    position:'top',
                    fontSize:20
                }
            },

            edgeSymbol: ['circle', 'arrow'],
            edgeSymbolSize: [1, 10],    //箭头的大小
            edgeLabel: {
                normal:{
                    show:false
                },
                emphasis: {
                    textStyle: {
                        fontSize: 20  //边节点显示的字体大小
                    }
                }
            },

//节点信息

            data:
            <%--${keywordRelated}--%>
                /!*[
                    {
                        name:'h1',
                        value:'10.108.50.101',
                        isnode:true,
                        x:100,
                        y:300,
                        // symbol:'image://服务器-20.png',
                    },
                    {
                        name:'h2',
                        value:'10.108.50.102',
                        isnode:true,
                        x:200,
                        y:470,
                        // symbol:'image://服务器-20.png',
                    },
                    {
                        name:'h3',
                        value:'10.108.50.103',
                        isnode:true,
                        x:400,
                        y:470,
                        // symbol:'image://服务器-20.png',
                    },
                    {
                        name:'h4',
                        value:'10.108.50.104',
                        isnode:true,
                        x:500,
                        y:300,
                        // symbol:'image://服务器-20.png',
                    },
                    {
                        name:'h5',
                        value:'10.108.50.105',
                        isnode:true,
                        x:400,
                        y:130,
                        // symbol:'image://服务器-20.png',
                    },
                    {
                        name:'h6',
                        value:'10.108.50.106',
                        isnode:true,
                        x:200,
                        y:130,
                        // symbol:'image://服务器-20.png',
                    },
                    {
                        name:'h7',
                        value:'10.108.50.107',
                        isnode:true,
                        x:300,
                        y:300,
                        // symbol:'image://服务器-20.png',
                    },

                ]*!/,

            links:
            <%--${keywordRelated}--%>
                [
                    {
                        source:'天涯博客',
                        target:'米花糖糖',
                        islink:"true",
                        name:'链路1',
//                        bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
//                        timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                        PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                    },
                    {
                        source:'h2',
                        target:'h3',
                        islink:true,
                        name:'链路2',
                        bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                        timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                        PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                    },{
                    source:'h3',
                    target:'h4',
                    islink:true,
                    name:'链路3',
                    bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                    timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                    PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                },{
                    source:'h4',
                    target:'h5',
                    islink:true,
                    name:'链路4',
                    bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                    timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                    PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                },{
                    source:'h5',
                    target:'h6',
                    islink:true,
                    name:'链路5',
                    bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                    timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                    PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                },{
                    source:'h6',
                    target:'h1',
                    islink:true,
                    name:'链路6',
                    bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                    timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                    PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                },{
                    source:'h1',
                    target:'h7',
                    islink:true,
                    name:'链路7',
                    bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                    timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                    PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                },{
                    source:'h2',
                    target:'h7',
                    islink:true,
                    name:'链路8',
                    bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                    timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                    PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                },{
                    source:'h3',
                    target:'h7',
                    islink:true,
                    name:'链路9',
                    bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                    timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                    PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                },{
                    source:'h7',
                    target:'h5',
                    islink:true,
                    name:'链路10',
                    bandwith:Math.round(Math.random()*50+50)+'M',//50-100间的随机整数
                    timeout:Math.round(Math.random()*10)+1+'ms',   //1-10间的整数
                    PacketLossRate:'0.0'+Math.round(Math.random()*10)+'%', //0.01%--0.09%
                },
                ],
            lineStyle: {
                normal: {
                    show:true,
                    color:
                        {
                            type: 'linear',
                            x: 0,
                            y: 0,
                            x2: 0,
                            y2: 1,
                            colorStops: [
                                {
                                    offset: 0, color: 'red' // 0% 处的颜色
                                }
                                ,{
                                    offset: 1, color: 'blue' // 100% 处的颜色
                                }],
                            globalCoord: false // 缺省为 false
                        },

                    // curveness: 0.2

                },
                emphasis:{
                    color:'red',
                    width:3,
                    type:'dashed',//虚线

                }
            },

            tooltip:
                {
                    position:'bottom',//悬浮时显示的位置
                    backgroundColor:'green',
                    textStyle:{fontSize:18,

                    },

                    formatter:function(params){//悬浮提示框显示的内容
                        if (params.data.islink) {return '带宽：&nbsp'+params.data.bandwith+'<br />'+'时延：&nbsp'+params.data.timeout+'<br />'+'丢包率：'+params.data.PacketLossRate;}
                        else if (params.data.isnode) {return params.data.value;}
                    }
                },//悬浮时的提示框，不设置时是随鼠标移动

        }
    ]
};*/

//    var dom = document.getElementById('chart-panel');
//    dom.style.width = 780 + 'px';
//    dom.style.height = 600 + 'px';
    var option12 = {
        tooltip: {
            show: false
        },
        legend: {
            x: "center",
            data: ["核心", "非核心"]
        },
        animation: false,
        series: [{
            categories: [{
                name: '核心',
                itemStyle: {
                    normal: {
                        color: "#b90c25",
                    }
                }
            }, {
                name: '非核心',
                itemStyle: {
                    normal: {
                        color: "#4592FF",
                    }
                }
            }],
            type: 'graph',
            layout: 'force',
            symbol: "circle",
            symbolSize: 40,
            roam: true, //禁止用鼠标滚轮缩小放大效果
            edgeSymbol: ['circle', 'arrow'],
            edgeSymbolSize: [0, 10],
            // 连接线上的文字
            focusNodeAdjacency: true, //划过只显示对应关系
            edgeLabel: {
                normal: {
                    show: true,
                    textStyle: {
                        fontSize: 20
                    },
                    formatter: "{c}"
                }
            },
            categories: [{
                name: '核心',
                itemStyle: {
                    normal: {
                        color: "#b90c25",
                    }
                }
            }, {
                name: '非核心',
                itemStyle: {
                    normal: {
                        color: "#4592FF",
                    }
                }
            }],
            lineStyle: {
                normal: {
                    opacity: 1,
                    width: 2,
                    curveness: 0
                }
            },
            // 圆圈内的文字
            label: {
                normal: {
                    show: true
                }
            },
            force: {
                repulsion: 300
            },
            data: ${keywordList},

            links: ${keywordRelateds}

        }]
    };
    myChart12.setOption(option12);

</script>

</body>

</html>