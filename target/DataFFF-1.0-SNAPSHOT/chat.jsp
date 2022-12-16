<%--
  Created by IntelliJ IDEA.
  User: fjq
  Date: 2022/12/11
  Time: 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>恐龙市疫情防控大数据监控平台</title>

    <style>

        body,p,ul,ol,dl,dd,h1,h2,h3,h4,h5,h6,td,input,select,option,textarea{
            margin:0;
            padding:0;
        }
        li{
            list-style:none;
        }
        img{
            border:none;
        }
        a{
            text-decoration:none;
        }
        body{
            background-color: #032e61;
        }

        /*-----------header-------------*/
        header{
            width: 100%;
            height: 60px;
            line-height: 60px;
            border-bottom: 1px solid #004c98;
        }
        .headerLeft{
            width: 27%;
            height: 60px;
            background-color: #004c98;
            float: left;
            text-align: center;
        }
        .headerLeft h3{
            color: #07f7f4;
            font-size: 20px;
        }
        .headerCenter{
            width: 46%;
            height: 60px;
            background-color: #002144;
            float: left;
            text-align: center;
        }
        .headerCenter h1{
            color: #fff;
            font-size: 26px;
        }
        .headerRight{
            width: 27%;
            height: 60px;
            background-color: #004c98;
            float: left;
            text-align: center;
        }
        .headerRight h3{
            color: #07f7f4;
            font-size: 20px;
        }


        /*----------section------------*/
        section{
            width: 100%;
        }
        .firstCon{
            width: 100%;
            height: 125px;
            background-color: #02356e;
            overflow: hidden;
        }
        .firstCon-left{
            width: 27%;
            height: 125px;
            overflow: hidden;
            float: left;
        }

        .first-center{
            width: 46%;
            height: 125px;
            background-color: #01458e;
            float: left;
        }
        .firstCon-left h4{
            color: #07f7f4;
            font-size: 18px;
            margin-left: 30px;
            overflow: hidden;
            margin-top: 10px;
        }
        .firstCon-right{
            float: left;
        }
        .firstCon-right h4{
            color: #07f7f4;
            font-size: 18px;
            margin-left: 30px;
            overflow: hidden;
            margin-top: 10px;
        }
        .firstLeftsec{
            width: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding-left: 30px;
        }
        .contain{
            width: 60px;
            height: 80px;
            float: left;
            margin-right: 23px;
            text-align: center;
        }
        .firsttab{
            width: 60px;
            height: 60px;

        }
        .contain p{
            color: #00b3fe;
            font-size: 13px;
        }
        .first-center h3{
            font-size: 18px;
            color: #06dae5;
            text-align: center;
        }
        .firstcenLeft{
            width: 33.33%;
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding:0 10px;
        }
        .flag{
            float: left;
            text-align: center;
            margin-right: 4px;
            margin-top: 10px;

        }
        .flag strong{
            font-size: 24px;
            color: #fff;
            border-right: 1px solid #ccc;
            width: 55px;
            display: block;
        }
        .flag:nth-of-type(3) strong{
            border-right: none;
        }
        .flag p{
            color: #06dae5;
            font-size: 14px;
            padding-top:20px;
        }
        .firstcenCen{
            width: 33.33%;
            float: left;
            height: 100px;
            text-align: center;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding:0px 10px;
            padding-top: 14px;
            padding-left: 25px;
        }
        .firstcenCen span{
            display: block;
            float: left;
            width: 50px;
            border:1px solid #05bdc9;
            box-shadow:inset 0 0 3px 5px #00b3fe;
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            height: 70px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin-right: 6px;
            font-size: 30px;
            color: #ffff01;
            font-weight: 900;
            text-align: center;
            vertical-align: middle;
            padding-top: 15px;
            background-color: #001729;
        }
        .firstcenRight{
            width: 33.33%;
            height: 100px;
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding:0 10px;
        }
        .line{
            width: 100%;
            height: 16px;
            background-color: #03559f;
            border-bottom: 1px solid #00b3fe;
        }
        .secondCon{
            width: 100%;
            marign-top:6px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding:6px 6px;
        }
        .secondLeft{
            width: 27%;
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .secondLeftCon{
            /*background-color: red;*/
            /*height: 200px;*/
        }
        .secondLeftTab{
            width: 100%;
            border:1px solid #00b3fe;
            padding:10px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            margin-top: 10px;
        }
        .secondLeftTab:nth-of-type(1){
            margin-top: 0px;
        }
        .fig{
            height: 30px;
            line-height: 30px;
            border-top:1px solid #00b3fe;
            border-bottom: 1px solid #00b3fe;
            margin-bottom: 10px;
            padding-left: 15px;
            padding-right:15px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .fig:nth-of-type(1){
            background-color: #03559f;
            padding:0px;
        }
        .fig p{
            font-size: 14px;
            color: #fff;
            float: left;
        }
        .fig em{
            float: right;
            font-size: 22px;
            font-weight: 900;
        }
        .fig:nth-of-type(2) em{
            color: #fffe7d;
        }
        .fig:nth-of-type(3) em{
            color: #ff7d01;
        }
        .fig:nth-of-type(4) em{
            color: #00b5fe;
        }
        .reception{
            width: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding:5px 20px;
            text-align: center;
            overflow: hidden;
        }
        .recetit{
            float: left;
            width: 88px;
            float: left;
            margin-right: 15px;
        }

        .recetit:nth-last-child(1){
            margin-right: 0px;
        }
        .recetit strong{
            color: #f5f77c;
            font-size: 15px;
        }
        .recetit span{
            display: block;
            text-align: center;
            margin-bottom: 6px;
            width: 72px;
            height: 8px;
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            background-color: #0b4e78;
            margin-left: 8px;
        }
        .recetit .changecolor{
            background-color: #05fff9;
        }
        .recetit p{
            color: #fff;
            font-size:12px;
        }

        .secondCen{
            width: 46%;
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding:0 14px;
        }
        .secondCenCon{
            overflow: hidden;
            padding-bottom: 50px;
            border:1px solid #00b3fe;
        }
        .secondCenCon h3{
            text-align: center;
            color: #05fef8;
            font-size: 16px;
            margin-top: 10px;
        }
        .secondContit{
            width: 100%;
        }
        .secondContitleft{
            width: 60%;
            margin-top: 40px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding-left: 10px;
            text-align: center;
            float: left;
        }
        .secondContitleft p{
            font-size: 14px;
            color: #05fef8;
            text-align: center;

        }
        .fig p{
            color: #05fef8;
        }
        .secondContitleft ul{
            padding:10px 0px;
            margin-left: 20px;
        }
        .secondContitleft ul li{
            float: left;
            width: 55px;
            border-right: 1px solid #fff;
            text-align: center;
            height: 10px;
            line-height: 10px;
        }
        .secondContitleft ul li:nth-last-child(1){
            border-right: none;
        }
        .secondContitleft .china{
            margin-bottom: 10px;
        }
        .secondContitleft .china li a{
            font-size: 10px;
            color: #fff;
        }
        .secondContitleft .number li a{
            color: #feff01;
            font-size: 18px;
            font-weight: 900;
        }
        .secondContitright{
            width: 40%;
            float: left;
            height: 40px;
        }
        .charbar{
            width: 100%;
            height: 200px;
        }



        .secondRight{
            width: 27%;
            float: left;
        }
        .secondRightCon{
            /*background-color: red;*/
            /*height: 200px;*/
        }
        .secondRighttit{
            width: 100%;
            overflow: hidden;
        }
        .secondRighttext{
            width: 33.33%;
            float: left;
            overflow: hidden;
        }

        .text{
            width: 80px;
            height: 40px;
            border:1px solid #04fff8;
            margin-bottom: 10px;
            margin-left: 16px;
        }
        .text p{
            font-size: 12px;
            color: #fff;
        }
        .text span{
            text-align: center;
            font-size: 18px;
            color: #ffff7d;
            margin-left: 14px;
        }
        .secondRighttext h4{
            font-size: 14px;
            color: #fff;
            text-align: center;
        }
        .secondRighttextChar{
            width: 100%;
            height: 100px;
        }
        .secondRighttext .sec{
            margin-top: 6px;
        }
        .secondChar{
            width: 100%;
            height: 170px;
        }
        .thirdCon{
            width: 100%;
            padding-top: 10px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding: 0px 6px;
            overflow: hidden;
        }
        .thirdLeft{
            width: 27%;
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            padding-top: 10px;
        }
        .thirdLeftCon{
            width: 100%;
            border:1px solid #00b3fe;
        }
        .hottop li{
            height: 35px;
            line-height: 35px;
            border-bottom: 1px dashed #fff;
        }
        .hottop li:nth-last-child(1){
            border-bottom: none;
        }
        .hottop li span{
            float: left;
            display: inline-block;
            width: 20px;
            height: 20px;
            /*margin-top: 8px;*/
            vertical-align: middle;
            text-align: center;
            margin-right: 10px;
            color: #fff;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .hottop li:nth-of-type(1) span{
            background-color: #ff0305;
        }
        .hottop li:nth-of-type(2) span{
            background-color: #ffb20c;
        }
        .hottop li:nth-of-type(3) span{
            background-color: #18d0c6;
        }
        .hottop li:nth-of-type(4) span{
            background-color: #00b4ff;
        }
        .hottop li:nth-of-type(5) span{
            background-color: #6c3ff2;
        }
        .hottop li p{
            float: left;
            color: #fff;
            font-size: 14px;
        }
        .hottop li a{
            float: right;
            color: #cecdcb;
            font-size: 14px;
        }
        .thirdCen{
            width: 46%;
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            height: 100px;
            padding:0px 14px;
            padding-top: 10px;
        }
        .thirdCenCon{
            height: 100px;
            width: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .txt{
            width: 50%;
            height: 100px;
            /*float: left;*/
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        .txtleft{
            padding-right: 11px;
            float: left;
        }
        .txtright{
            float: left;
        }
        .content{
            height: 250px;
            border:1px solid #00b3fe;
        }
        .content h4{
            font-size: 14px;
            color: #05fef8;
            text-align: center;
            height: 26px;
            line-height: 26px;
            border-bottom: 1px solid #00b3fe;

        }
        .contentChar{
            width: 100%;
            height: 215px;
        }
        .thirdRight{
            float: left;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            height: 100px;
            width: 27%;
            padding-top: 10px;
        }

        /*-----------footer-----------*/
        footer{
            width: 100%;
            height: 52px;
            margin-top: 20px;
            background-color: #011635;
            padding-top: 10px;
        }
        .rightimg{
            float: left;
            display: block;
            line-height: 52px;
        }
        .home{
            float: left;
            width: 120px;
            height: 40px;
            border:1px solid #00b3fe;
            background-color: #042d6b;
            margin-left: 6px;
        }
        .home img{
            vertical-align: center;
            margin-top: 6px;
            margin-left: 5px;
        }
        .home button{
            background-color: #042d6b;
            border:none;
            outline: none;
            font-size: 15px;
            color: #fff;
            margin-bottom: -6px;
        }
        .con{
            float: left;
            border:1px solid #00b3fe;
            margin-left: 10px;
            height: 40px;
        }
        .con p{
            font-size: 12px;
            color: #fff;
        }
        .con h4{
            font-size: 15px;
            color: #04fefc;
            line-height: 18px;
        }

    </style>
</head>
<body>
<header>
    <div class="headerLeft">
        <h3>志愿时长</h3>
    </div>
    <div class="headerCenter">
        <h1>恐龙社区疫情防控大数据监控平台</h1>
    </div>
    <div class="headerRight">
        <h3>每日打卡数据</h3>
    </div>

</header>
<section>
    <div class="firstCon">
        <div class="firstCon-left">
            <h4>各项志愿服务活动总时长/分钟</h4>
            <div class="firstLeftsec">
                <div class="contain">
                    <div class="firsttab" id="firsttab1"></div>
                    <p>场所码查询 </p>
                </div>
                <div class="contain">
                    <div class="firsttab" id="firsttab2"></div>
                    <p>健康码查询</p>
                </div>
                <div class="contain">
                    <div class="firsttab" id="firsttab3"></div>
                    <p>核酸扫码</p>
                </div>
                <div class="contain">
                    <div class="firsttab" id="firsttab4"></div>
                    <p>物资运输</p>
                </div>
            </div>
        </div>
        <div class="first-center">
            <h3>当前社区核酸等候人数</h3>
            <div class="firstcenLeft">
                <div class="flag">
                    <strong>35</strong>
                    <p>队伍一</p>
                </div>
                <div class="flag">
                    <strong>35</strong>
                    <p>队伍二</p>
                </div>
                <div class="flag">
                    <strong>35</strong>
                    <p>队伍三</p>
                </div>
            </div>
            <div class="firstcenCen">
                <span>1</span>
                <span>4</span>
                <span>9</span>
            </div>
            <div class="firstcenRight">
                <div class="flag">
                    <strong>35</strong>
                    <p>队伍四</p>
                </div>
                <div class="flag">
                    <strong>35</strong>
                    <p>队伍五</p>
                </div>
                <div class="flag">
                    <strong>35</strong>
                    <p>队伍六</p>
                </div>
            </div>
        </div>
        <div class="firstCon-right">
            <h4>各业务平均办理时间/分钟</h4>
            <div class="firstLeftsec">
                <div class="contain">
                    <div class="firsttab" id="firsttab5"></div>
                    <p>监考区域I区</p>
                </div>
                <div class="contain">
                    <div class="firsttab" id="firsttab6"></div>
                    <p>监考区域Ⅱ区</p>
                </div>
                <div class="contain">
                    <div class="firsttab" id="firsttab7"></div>
                    <p>监考区域Ⅲ区</p>
                </div>
                <div class="contain">
                    <div class="firsttab" id="firsttab8"></div>
                    <p>监考区域Ⅳ区</p>
                </div>
            </div>
        </div>
    </div>
    <div class="line"></div>
    <div class="secondCon">
        <div class="secondLeft">
            <div class="secondLeftCon">
                <div class="secondLeftTab">
                    <div class="fig">
                        <p>本社区新冠患者人数</p>
                    </div>
                    <div class="fig">
                        <p>密接人数</p>
                        <em>80人</em>
                    </div>
                    <div class="fig">
                        <p>无症状人数</p>
                        <em>120人</em>
                    </div>
                    <div class="fig">
                        <p>重症人数</p>
                        <em>70人</em>
                    </div>
                </div>

                <div class="secondLeftTab">
                    <div class="fig">
                        <p>志愿者人数变更情况：</p>
                    </div>
                    <div class="reception">
                        <div class="recetit">
                            <strong>40人</strong>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <p>新增志愿者人数</p>
                        </div>
                        <div class="recetit">
                            <strong>40人</strong>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <p>志愿者因病无法工作人数</p>
                        </div>
                        <div class="recetit">
                            <strong>40人</strong>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <span class="changecolor"></span>
                            <p>志愿者退出人数</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="secondCen">
            <div class="secondCenCon">
                <h3>新冠患者人数实时监控</h3>
                <div class="secondContit">
                    <div class="secondContitleft">
                        <p>今日新增新冠患者人数</p>
                        <img src="image/line.png" alt="">
                        <ul class="china">
                            <li><a href="">密接</a></li>
                            <li><a href="">无症状</a></li>
                            <li><a href=""> 重症</a></li>
                            <li><a href="">核酸异常</a></li>
                            <li><a href="">出院人数</a></li>
                        </ul>
                        <img src="image/line.png" alt="">
                        <ul class="number">
                            <li><a href="">20</a></li>
                            <li><a href="">40</a></li>
                            <li><a href="">32</a></li>
                            <li><a href="">34</a></li>
                            <li><a href="">30</a></li>
                        </ul>
                        <img src="image/line.png" alt="">
                    </div>
                    <div class="secondContitright" id="secondContitright">
                        <div class="charbar" id="charbar"></div>
                    </div>
                </div>
                <div class="secondContit">
                    <div class="secondContitleft">
                        <p>历史累计新冠患者人数</p>
                        <img src="image/line.png" alt="">
                        <ul class="china">
                            <li><a href="">密接</a></li>
                            <li><a href="">无症状</a></li>
                            <li><a href="">重症</a></li>
                            <li><a href="">核酸异常</a></li>
                            <li><a href="">出院人数</a></li>
                        </ul>
                        <img src="image/line.png" alt="">
                        <ul class="number">
                            <li><a href="">20</a></li>
                            <li><a href="">40</a></li>
                            <li><a href="">32</a></li>
                            <li><a href="">34</a></li>
                            <li><a href="">30</a></li>
                        </ul>
                        <img src="image/line.png" alt="">
                    </div>
                    <div class="secondContitright" id="secondContitright2">
                        <div class="charbar" id="charbar2"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="secondRight">
            <div class="secondRightCon">
                <div class="secondLeftTab">
                    <div class="fig">
                        <p>区域核酸执行情况</p>
                    </div>
                    <div class="secondRighttit">
                        <div class="secondRighttext">
                            <div class="text">
                                <p>碧桂园小区</p>
                                <span>442户</span>
                            </div>
                            <div class="text">
                                <p>建业十八城小区</p>
                                <span>442户</span>
                            </div>
                            <h4>重点小区户数</h4>
                        </div>
                        <div class="secondRighttext">
                            <div class="secondRighttextChar" id="secondRighttextChar">

                            </div>
                            <h4 class="sec">重点小区户数</h4>
                        </div>
                        <div class="secondRighttext">
                            <div class="secondRighttextChar" id="secondRighttextChar1">

                            </div>
                            <h4 class="sec">核酸占比</h4>
                        </div>
                    </div>
                </div>
                <div class="secondLeftTab">
                    <div class="fig">
                        <p>数据统计分析(折线图)</p>
                    </div>
                    <div class="secondChar" id="secondChar">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="thirdCon">
        <div class="thirdLeft">
            <div class="thirdLeftCon">
                <div class="secondLeftTab">
                    <div class="fig">
                        <p>当日新型冠状病毒最热问题 TOP 5</p>
                    </div>
                    <ul class="hottop">
                        <li><span>1</span><p>如何避免成为密接？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                        <li><span>2</span><p>如何避免感染新冠病毒？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                        <li><span>3</span><p>如何做好居家隔离？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                        <li><span>4</span><p>感染新冠病毒如何居家治疗？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                        <li><span>5</span><p>新冠病毒七种家庭疗法？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="thirdCen">
            <div class="thirdCenCon">
                <div class="txt txtleft">
                    <div class="content">
                        <h4>当日社区各时段出入人流量曲线图（折线图）</h4>
                        <div class="contentChar" id="contentChar1"></div>
                    </div>
                </div>
                <div class="txt txtright">
                    <div class="content">
                        <h4>当日各时段大厅人流量曲线图（折线图）</h4>
                        <div class="contentChar" id="contentChar2"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="thirdRight">
            <div class="thirdRightCon">
                <div class="secondLeftTab">
                    <div class="fig">
                        <p>当日新冠政策最热问题  TOP5</p>
                    </div>
                    <ul class="hottop">
                        <li><span>1</span><p>出门是否需要健康码绿码？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                        <li><span>2</span><p>前往外地出差是否需要核酸检测证明？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                        <li><span>3</span><p>场所码无最近核酸检测证明是否有影响？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                        <li><span>4</span><p>如何坚持做好个人健康申报？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                        <li><span>5</span><p>对居家隔离有什么要求？</p><a href="https://www.henu.edu.cn/">了解详情</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="footerleft">
        <img src="image/right.png" alt="" class="rightimg">
        <div class="home">
            <img src="image/home.png" alt="">
            <button id="homebtn" value="首页"><a href="/DataFFF_war_exploded/GetAllPersonServlet">首页</a></button>
        </div>
        <div class="con">
            <p>当前时间</p>
<%--            <h4>2018年1月9日 星期四 15:00</h4>--%>
            <div class="weather">
                <p id="showTime"></p>
            </div>
            <script>
                var t = null;
                t = setTimeout(time, 1000);//開始运行
                function time() {
                    clearTimeout(t);//清除定时器
                    dt = new Date();
                    var y = dt.getFullYear();
                    var mt = dt.getMonth() + 1;
                    var day = dt.getDate();
                    var h = dt.getHours();//获取时
                    var m = dt.getMinutes();//获取分
                    var s = dt.getSeconds();//获取秒
                    document.getElementById("showTime").innerHTML = y + "年" + mt + "月" + day + "日" + "-" + h + ":" + m + ":" + s;
                    t = setTimeout(time, 1000); //设定定时器，循环运行
                }
            </script>
        </div>
    </div>
    <div class="footercen"></div>
    <div class="footerright"></div>
</footer>
</body>
</html>
<script src="https://www.jq22.com/jquery/echarts-4.2.1.min.js"></script>
<script src="js/jquery.1.10.min.js"></script>
<%--<script src="js/chars.js"></script>--%>
<script>
    var dom = document.getElementById("firsttab1");
    var dom2 = document.getElementById("firsttab2");
    var dom3 = document.getElementById("firsttab3");
    var dom4 = document.getElementById("firsttab4");
    var dom5 = document.getElementById("firsttab5");
    var dom6 = document.getElementById("firsttab6");
    var dom7 = document.getElementById("firsttab7");
    var dom8 = document.getElementById("firsttab8");
    var dom9 = document.getElementById("charbar");
    var dom10 = document.getElementById("charbar2");
    var dom11 = document.getElementById("secondRighttextChar");
    var dom12 = document.getElementById("secondRighttextChar1");
    var dom13 = document.getElementById("secondChar");
    var dom14 = document.getElementById("contentChar1");
    var dom15 = document.getElementById("contentChar2");

    var myChart = echarts.init(dom,"wonderland");
    var myChart2= echarts.init(dom2,"wonderland");
    var myChart3 = echarts.init(dom3,"wonderland");
    var myChart4 = echarts.init(dom4,"wonderland");
    var myChart5 = echarts.init(dom5,"wonderland");
    var myChart6= echarts.init(dom6,"wonderland");
    var myChart7 = echarts.init(dom7,"wonderland");
    var myChart8 = echarts.init(dom8,"wonderland");
    var myChart9 = echarts.init(dom9,"wonderland");
    var myChart10 = echarts.init(dom10,"wonderland");
    var myChart11 = echarts.init(dom11,"wonderland");
    var myChart12 = echarts.init(dom12,"wonderland");
    var myChart13 = echarts.init(dom13,"wonderland");
    var myChart14 = echarts.init(dom14,"wonderland");
    var myChart15 = echarts.init(dom15,"wonderland");

    window.addEventListener("resize", () => {
        this.myChart.resize();
        this.myChart2.resize();
        this.myChart3.resize();
        this.myChart4.resize();
        this.myChart5.resize();
        this.myChart6.resize();
        this.myChart7.resize();
        this.myChart8.resize();
        this.myChart9.resize();
        this.myChart10.resize();
        this.myChart11.resize();
        this.myChart12.resize();
        this.myChart13.resize();
        this.myChart14.resize();
        this.myChart15.resize();
    });


    option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },

        series: [
            {
                name:'访问来源',
                type:'pie',
                radius: ['40%', '80%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '20',
                            fontWeight: 'bold',color:['#fff'],
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data:[
                    {value:2.5, name:'2.5',itemStyle:{
                            color:"#0268e8"
                        }}
                ]
            }
        ]
    };
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
    if (option && typeof option === "object") {
        myChart2.setOption(option, true);
    }
    if (option && typeof option === "object") {
        myChart3.setOption(option, true);
    }
    if (option && typeof option === "object") {
        myChart4.setOption(option, true);
    }
    if (option && typeof option === "object") {
        myChart5.setOption(option, true);
    }
    if (option && typeof option === "object") {
        myChart6.setOption(option, true);
    }
    if (option && typeof option === "object") {
        myChart7.setOption(option, true);
    }
    if (option && typeof option === "object") {
        myChart8.setOption(option, true);
    }




    option1 = {
        title : {
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'right',
            data: ['发代开','发票发','纳税申','发票旧','发认证']
        },
        series : [
            {
                name: '业务办理',
                type: 'pie',
                radius : '35%',
                center: ['50%', '60%'],
                data:[
                    {value:335, name:'密接'},
                    {value:310, name:'无症状'},
                    {value:234, name:'重症'},
                    {value:135, name:'核酸异常'},
                    {value:1548, name:'出院人数'}
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    },
                    normal:{
                        color:function(params) {
                            //自定义颜色
                            var colorList = [
                                '#01b7ff', '#fd7c28', '#6fb440', '#ffc800', '#2d89dc',
                            ];
                            textStyle : {
                                // fontWeight : 300 ,
                                fontSize : 8    //文字的字体大小
                            }
                            return colorList[params.dataIndex]
                        }
                    }
                }
            }
        ]
    };
    if (option1 && typeof option1 === "object") {
        myChart9.setOption(option1, true);
    }
    if (option1 && typeof option1 === "object") {
        myChart10.setOption(option1, true);
    }




    option2 = {
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
                data : ['省级', '市级'],
                axisTick: {
                    alignWithLabel: true
                },
                axisTick: {
                    show: false
                },
                axisLine: {
                    lineStyle: {
                        type: 'solid',
                        color: '#fff',//左边线的颜色
                        width:'2'//坐标线的宽度
                    }
                },
                axisLabel: {
                    textStyle: {
                        color: '#fff',//坐标值得具体的颜色

                    }
                }

            }
        ],
        yAxis : [
            {
                type : 'value',
                axisTick: {
                    show: false
                },
                splitLine:{
                    show:false
                },
                axisLine: {
                    lineStyle: {
                        type: 'solid',
                        color: '#fff',//左边线的颜色
                        width:'2'//坐标线的宽度
                    }
                },
                axisLabel: {
                    textStyle: {
                        color: '#fff',//坐标值得具体的颜色

                    }
                }

            }
        ],
        series : [
            {
                name:'直接访问',
                type:'bar',
                barWidth: '60%',
                data:[32.62, 52.68],
                itemStyle:{
                    normal:{
                        color: function (params){
                            var colorList = ['#05fef8','#fedc00'];
                            return colorList[params.dataIndex];
                        }
                    }
                }

            }
        ]
    };
    if (option2 && typeof option2 === "object") {
        myChart11.setOption(option2, true);
    }






    option3 = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data:['直接问','件营销','联盟广告','视频广告','搜索引擎']
        },
        series: [
            {
                name:'省级市级',
                type:'pie',
                radius: ['30%', '70%'],
                avoidLabelOverlap: false,
                label: {
                    normal: {
                        show: false,
                        position: 'center'
                    },
                    emphasis: {
                        show: true,
                        textStyle: {
                            fontSize: '30',
                            fontWeight: 'bold'
                        }
                    }
                },
                itemStyle:{
                    normal:{
                        color: function (params){
                            var colorList = ['#05fef8','#fedc00'];
                            return colorList[params.dataIndex];
                        }
                    }
                },
                labelLine: {
                    normal: {
                        show: false
                    }
                },
                data:[
                    {value:335, name:'省级以上'},
                    {value:310, name:'市级以上'}
                ]
            }
        ]
    };
    if (option3 && typeof option3 === "object") {
        myChart12.setOption(option3, true);
    }



    // Generate data
    var category = [];
    var dottedBase = +new Date();
    var lineData = [];
    var barData = [];

    for (var i = 0; i < 20; i++) {
        var date = new Date(dottedBase += 3600 * 24 * 1000);
        category.push([
            date.getFullYear(),
            date.getMonth() + 1,
            date.getDate()
        ].join('-'));
        var b = Math.random() * 200;
        var d = Math.random() * 200;
        barData.push(b)
        lineData.push(d + b);
    }


    // option
    option4 = {
        backgroundColor: '#0f375f',
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'shadow'
            }
        },
        legend: {
            data: ['line', 'bar'],
            textStyle: {
                color: '#ccc'
            }
        },
        xAxis: {
            data: category,
            axisLine: {
                lineStyle: {
                    color: '#ccc'
                }
            }
        },
        yAxis: {
            splitLine: {show: false},
            axisLine: {
                lineStyle: {
                    color: '#ccc'
                }
            }
        },
        series: [{
            name: 'line',
            type: 'line',
            smooth: true,
            showAllSymbol: true,
            symbol: 'emptyCircle',
            symbolSize: 5,
            data: lineData
        }, {
            name: 'bar',
            type: 'bar',
            barWidth: 5,
            itemStyle: {
                normal: {
                    barBorderRadius: 5,
                    color: new echarts.graphic.LinearGradient(
                        0, 0, 0, 1,
                        [
                            {offset: 0, color: '#fbb307'},
                            {offset: 1, color: '#84f00e'}
                        ]
                    )
                }
            },
            data: barData
        }, {
            name: 'line',
            type: 'bar',
            barGap: '-100%',
            barWidth: 10,
            itemStyle: {
                normal: {
                    color: new echarts.graphic.LinearGradient(
                        0, 0, 0, 1,
                        [
                            {offset: 0, color: 'rgba(20,200,212,0.5)'},
                            {offset: 0.2, color: 'rgba(20,200,212,0.2)'},
                            {offset: 1, color: 'rgba(20,200,212,0)'}
                        ]
                    )
                }
            },
            z: -12,
            data: lineData
        }, {
            name: 'dotted',
            type: 'pictorialBar',
            symbol: 'rect',
            itemStyle: {
                normal: {
                    color: '#0f375f'
                }
            },
            symbolRepeat: true,
            symbolSize: [12, 4],
            symbolMargin: 1,
            z: -10,
            data: lineData
        }]
    };
    if (option4 && typeof option4 === "object") {
        myChart13.setOption(option4, true);
    }



    option5 = {
        xAxis: {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            axisTick: {
                show: false
            },
            data: ['7:00', '8:00', '9:00', '10:00', '11:00', '12:00', '13:00','14:00'],
            axisLine: {
                lineStyle: {
                    type: 'solid',
                    color: '#fff',//左边线的颜色
                    width:'2'//坐标线的宽度
                }
            },
            axisLabel: {
                textStyle: {
                    color: '#fff',//坐标值得具体的颜色

                }
            }
        },
        yAxis: {
            type: 'value',
            axisTick: {
                show: true
            },
            splitLine:{
                // show:false
            },
            axisLine: {
                lineStyle: {
                    type: 'solid',
                    color: '#fff',//左边线的颜色
                    width:'2'//坐标线的宽度
                }
            },
            axisLabel: {
                textStyle: {
                    color: '#fff',//坐标值得具体的颜色

                }
            }
        },
        series: [{
            data: [5, 8, 20, 22, 24, 22, 35,18,10,1],
            type: 'line',
            smooth:.2,
            color:'#04fefa'
        }]
    };
    if (option5 && typeof option5 === "object") {
        myChart14.setOption(option5, true);
    }
    if (option5 && typeof option5 === "object") {
        myChart15.setOption(option5, true);
    }

</script>