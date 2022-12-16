<%--
  Created by IntelliJ IDEA.
  User: 10706
  Date: 2022/12/11
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
    String path = request.getContextPath() ;
%>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/show.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<style>
    .sjs-default{
        position: relative;
        padding: 0;
        margin: 0;
        opacity: 0;
        transition: height .2s ease-out, opacity .2s ease-out .2s;
    }
    [data-sjsel]{
        opacity: 0;
        position: absolute;
        top: 0;
        left: 0;
        transition: transform .2s ease-out;
    }
</style>
<style>
    :root{
        --main-bg-color: #ff7675;
    }
    *,
    *::after,
    *::before{
        box-sizing: border-box;
    }
    html{
        font-size: .625em;
        font-size: calc(1em * .625);
        -ms-text-size-adjust: 100%;
        -webkit-text-size-adjust: 100%;
    }
    body{
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        margin: 0;
        padding: 0;
        font: normal 300 1.4em / 1.2 'Open-sans', helvetica, sans-serif;
        color: #111;
        background-color: #2D2D2D;
    }
    a{
        text-decoration: none;
        color: #111;
        cursor: pointer;
    }
    ol,
    ul{
        list-style: none;
        margin: 0;
        padding: 0;
    }
    img{
        max-width: 100%;
    }
    b,
    strong{
        font-weight: 600;
    }
    hr{
        background: #111;
        box-shadow: none;
        border: none;
        height: 1px;
        width: 100%;
        margin: 10px 0;
    }
    ::selection{
        background: var(--main-bg-color);
        color: #fff;
    }
    ::-moz-selection{
        background: var(--main-bg-color);
        color: #fff;
    }

    .container{
        width: 100%;
        max-width: 980px;
        margin: 0 auto;
        padding: 0 10px;
    }
    .wrapper{
        padding: 40px 0;
    }
    .card{
        background: #fff;
        border-radius: 6px;
        box-shadow: 0px 2px 6px rgba(0, 0, 0, .1);
        display: flex;
        flex-direction: column;
        transition: box-shadow .2s ease-in-out;
    }
    .card__picture{
        display: block;
        width: 100%;
        height: auto;
        border-top-left-radius: 6px;
        border-top-right-radius: 6px;
    }
    .card-infos{
        padding: 20px;
        background: #fff;
        border-bottom-left-radius: 6px;
        border-bottom-right-radius: 6px;
    }
    .card__title{
        font-family: 'Hind';
        font-size: 1.8rem;
        font-weight: 600;
        line-height: 1.4;
        margin: 0 0 10px;
    }
    .card__text{
        font-size: 1.4rem;
        font-weight: 300;
        margin: 0;
        color: #86888A;
    }
    .card__text--high{
        font-weight: 600;
    }

    .header{
        background: var(--main-bg-color);
        height: 160px;
        display: flex;
    }
    .header__title{
        margin: auto;
        font-weight: 300;
        font-size: 3.2rem;
        color: #fff;
    }
    .header__title--high{
        font-weight: 600;
    }

    .sortable__nav{
        display: flex;
        justify-content: center;
        margin-bottom: 20px;
    }
    .nav__link{
        padding: 0 20px 4px;
        color: #fff;
        font-size: 1.4rem;
        font-weight: 300;
        display: block;
        border-bottom: 2px solid transparent;
    }
    .nav__link.is-active{
        border-color: var(--main-bg-color);
    }

    .footer__list.list{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .list__item.item{
        display: flex;
    }
    .item__link.link{
        margin: 0;
    }
    .item__link.link:not(:first-child){
        margin-left: 20px;
    }
    .link__icon{
        height: 2rem;
        width: 2rem;
    }

</style>
<script type="text/javascript">
    function gotoReg(){
        location.href = "/modify.jsp"
    }
</script>

<script>"use strict";var _extends=Object.assign||function(t){for(var e=1;e<arguments.length;e++){var n=arguments[e];for(var i in n)Object.prototype.hasOwnProperty.call(n,i)&&(t[i]=n[i])}return t},_createClass=function(){function i(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}return function(t,e,n){return e&&i(t.prototype,e),n&&i(t,n),t}}();function _toConsumableArray(t){if(Array.isArray(t)){for(var e=0,n=Array(t.length);e<t.length;e++)n[e]=t[e];return n}return Array.from(t)}function _classCallCheck(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}var Sortable=function(){function d(){var t=0<arguments.length&&void 0!==arguments[0]?arguments[0]:{},e=t.parent,n=t.links,i=void 0===n?document.querySelectorAll("[data-sjslink]"):n,s=t.active,a=void 0===s?"is-active":s,r=t.margin,o=void 0===r?20:r,l=t.responsive,u=void 0===l?{980:{columns:3},480:{columns:2},0:{columns:1}}:l,c=t.fadeDuration,h=void 0===c?{in:300,out:0}:c;_classCallCheck(this,d),this.parent=e,this.links=Array.from(i),this.active=a,this.margin=o,this.responsive=u,this.fadeDuration=h,this.elements=Array.from(this.parent.children),this.activeElements=this.elements,this.columns=1,this.dataLink="all",this.winWidth=window.innerWidth,this.init()}return _createClass(d,[{key:"orderelements",value:function(){var r=this,t=this.parent,e=this.activeElements,o=this.columns,l=this.blocWidth,u=(this.responsive,this.margin),n=e.reduce(function(t,e,n){var i=r._sumArrHeight(t,o),s=n%o*(l+u),a=0<=n-o?i[n%o]+u*Math.floor(n/o):0;return e.style.transform="translate3d("+s+"px, "+a+"px, 0)",t.push(e.offsetHeight),t},[]),i=this._sumArrHeight(n,o),s=Math.max.apply(Math,_toConsumableArray(i))+u*(Math.floor(e.length/o)-1);t.style.height=s+"px"}},{key:"handleFilterClick",value:function(t,e){var n=this;t.preventDefault();var i=this.links,s=this.active;e.dataset.sjslink!==this.dataLink&&(this.dataLink=e.dataset.sjslink,i.forEach(function(t){t.isEqualNode(e)?t.classList.add(s):t.classList.remove(s)}),this._filterElements(function(){n.orderelements()}))}},{key:"resize",value:function(){var t=this;window.addEventListener("resize",function(){clearTimeout(window.sortableResize),window.sortableResize=setTimeout(function(){t.winWidth=window.innerWidth,t._setBlocWidth(function(){t.orderelements()})},500)})}},{key:"init",value:function(){var n=this,t=this.parent,e=this.links,i=this.active;e.forEach(function(e,t){0===t&&(e.classList.add(i),n.dataLink=e.dataset.sjslink),e.addEventListener("click",function(t){n.handleFilterClick(t,e)})}),this._setBlocWidth(),window.addEventListener("load",function(){n._filterElements(function(){n.orderelements()}),t.style.opacity=1}),this.resize()}},{key:"_setBlocWidth",value:function(t){var e=this.parent,n=this.elements,i=this.margin,s=this.responsive,a=this.columns=this._columnsCount(s).columns,r=this.blocWidth=(e.clientWidth-i*(a-1))/a;n.forEach(function(t){t.style.width=r+"px"}),t&&t()}},{key:"_filterElements",value:function(t){var e=this,n=this.elements,i=this.dataLink,s=this.fadeDuration;this.activeElements=n.filter(function(t){return"all"===i?(e._fadeIn(t,s.in),!0):t.dataset.sjsel!==i?(e._fadeOut(t,s.out),!1):(e._fadeIn(t,s.in),!0)}),t&&t()}},{key:"_sumArrHeight",value:function(t,s){return t.reduce(function(t,e,n){var i=n%s;return t[i]||(t[i]=0),t[i]=t[i]+e,t},[])}},{key:"_columnsCount",value:function(t){var n=this.winWidth;return Object.entries(t).reduce(function(t,e){return n>e[0]&&e[0]>=Math.max(t.width)?{width:e[0],columns:e[1].columns}:t},{width:0,columns:4})}},{key:"_fadeIn",value:function(e){var t=1<arguments.length&&void 0!==arguments[1]?arguments[1]:300,n=arguments[2],i=parseFloat(window.getComputedStyle(e,null).getPropertyValue("opacity")),s=16/t;e.style.display="block",requestAnimationFrame(function t(){(i+=s)<=1?(e.style.opacity=i,requestAnimationFrame(t)):(e.style.opacity=1,n&&n())})}},{key:"_fadeOut",value:function(e){var t=1<arguments.length&&void 0!==arguments[1]?arguments[1]:300,n=arguments[2],i=parseFloat(window.getComputedStyle(e,null).getPropertyValue("opacity")),s=t?16/t:1;requestAnimationFrame(function t(){0<=(i-=s)?(e.style.opacity=i,requestAnimationFrame(t)):(e.style.opacity=0,e.style.display="none",n&&n())})}}]),d}();HTMLElement.prototype.sortablejs=HTMLElement.prototype.sortablejs||function(t){return new Sortable(_extends({parent:this},t))};</script>
<style>.sjs-default{position:relative;padding:0;margin:0;opacity:0;transition:height .2s ease-out,opacity .2s ease-out .2s}[data-sjsel]{opacity:0;position:absolute;top:0;left:0;transition:-webkit-transform .2s ease-out;transition:transform .2s ease-out;transition:transform .2s ease-out,-webkit-transform .2s ease-out}</style>
<body>
<%
    //      这里用于显示数据
    request.getAttribute("list") ;
%>
<div class="head">

    <i></i>
    <p class="title"> 防疫志愿者人员信息管理</p>
    <p>当前用户：${pname}</p>
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

<div class="row">
    <div class="nav col-xs-1 col-sm-1 col-md-1 col-lg-1">
        <div class="sidebar">
            <ul>
                <li>
                    <h4 style="text-align: center;">志愿者管理</h4>
                </li>
                <li >
                    <a href="/DataFFF_war_exploded/GetAllPersonServlet">首页</a>
                </li>
                <li>
                    <a href="register.jsp">志愿者注册</a>
                </li>
                <li>
                    <a href="search.jsp">志愿者查询</a>
                </li>
                <li class="cur">
                    <a href="card.jsp">志愿者打卡</a>
                </li>
                <li>
                    <a href="chat.jsp">数据一览</a>
                </li>

            </ul>
        </div>
    </div>
    <div class="content col-xs-11 col-sm-11 col-md-11 col-lg-11s" >
        <!-- 上面的功能栏 -->
        <main class="sortable">

        <div class="container">
            <div class="wrapper">
<%--                <ul class="sortable__nav nav">--%>
<%--&lt;%&ndash;                    <li> <a data-sjslink="all" class="nav__link"> 打卡详情 </a> </li>&ndash;%&gt;--%>
<%--                    <!-- <li> <a data-sjslink="flatty" class="nav__link"> 扁平的 </a> </li> -->--%>
<%--                    <!-- <li> <a data-sjslink="funny" class="nav__link"> 有趣的 </a> </li> -->--%>
<%--                </ul>--%>
                <div id="sortable" class="sjs-default">
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 1</h2>
                                <p class="card__text">
                                    姓名：李昊；性别：男；学号：2012020056；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.7‘C；是否具有防疫健康信息码：是；
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 2</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是； </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 3</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是； </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 4</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 5</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；</p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 6</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 7</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 8</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；</p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 9</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 10</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是； </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 11</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 12</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>

                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 13</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是； </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 14</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 15</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>

                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 16</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是； </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 17</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 18</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>

                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 19</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是； </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 20</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 21</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>

                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 22</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是； </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 23</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <div class="card-infos">
                                <h2 class="card__title">志愿者 24</h2>
                                <p class="card__text"> 姓名：日天；性别：男；学号：20120200xx；打卡时间：2022-11-12；所在地：河南大学金明校区；体温：36.2‘C；是否具有防疫健康信息码：是；  </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        </main>
    </div>
    <script type="text/javascript">
        document.querySelector('#sortable').sortablejs()
    </script>



    </div>
</div>

</body>
<script src="js/show.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>


</html>
