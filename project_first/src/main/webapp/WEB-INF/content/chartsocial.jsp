<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.*, java.text.*"  %>
<html>
  <head>
  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-128305810-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-128305810-1');
</script>
  
   <script src="https://code.jquery.com/jquery-1.4.4.min.js"></script>

     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
      <script type="text/javascript" src="js/coinprice.js"></script>

  
  

  
    <script type="text/javascript">
    

    var chartData = {
            labels: namedata,
            datasets: [{
                label: "당일최고가",
                data: highprice,
                backgroundColor: "#28D094",
                hoverBackgroundColor: "rgba(40,208,148,.9)",
                borderColor: "transparent"
            }, {
                label: "당일최저가",
                data: lowprice,
                backgroundColor: "#FF4961",
                hoverBackgroundColor: "rgba(255,73,97,.9)",
                borderColor: "transparent"
            }, {
                label: "현재가격",
                data: lastprice,
                backgroundColor: "#5549ff",
                hoverBackgroundColor: "rgba(127, 118, 252)",
                borderColor: "transparent"
            }]
        };
  </script>
  
   <script type="text/javascript">
  
  
  var tradevaluename = new Array();
  var longcount = new Array();
  var shortcount = new Array();
  var longper = new Array();
  var shortper = new Array();
	
	
  
	<c:forEach items="${list2}" var="btctradeshop" >
    
	tradevaluename.push('${btctradeshop.tradevaluename}');
	longper.push('${btctradeshop.longper}');
	longcount.push('${btctradeshop.longcount}');
	shortper.push('${btctradeshop.shortper}');
	shortcount.push('${btctradeshop.shortcount}');
    
    
    </c:forEach>
    
    
  
  var chartbarData = {
	        labels: tradevaluename,
	        datasets: [{
	            label: "LongPosition:"+longcount,
	            data: [longper,0,100],
	            backgroundColor: "#28D094",
	            hoverBackgroundColor: "rgba(40,208,148,.9)",
	            borderColor: "transparent"
	        }, {
	            label: "ShortPosition:"+shortcount,
	            data: shortper,
	            backgroundColor: "#FF4961",
	            hoverBackgroundColor: "rgba(255,73,97,.9)",
	            borderColor: "transparent"
	        }]
	    };

  
  
  </script>
  
  <script type="text/javascript">
  
  

  
  
  var chartlineData = {
/* 	        labels: ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"],
 */	       
 			labels: [],
 			datasets: [{
	            label: "Today Volume",
	            data: [],
	            fill: false,
	            borderDash: [5, 5],
	            borderColor: "#9C27B0",
	            pointBorderColor: "#9C27B0",
	            pointBackgroundColor: "#FFF",
	            pointBorderWidth: 2,
	            pointHoverBorderWidth: 2,
	            pointRadius: 4,
	        }
/* 	        , {
	            label: "Today Volume",
	            data: [45, 25, 16, 36, 67, 18, 76],
	            lineTension: 0,
	            fill: false,
	            borderColor: "#FF7D4D",
	            pointBorderColor: "#FF7D4D",
	            pointBackgroundColor: "#FFF",
	            pointBorderWidth: 2,
	            pointHoverBorderWidth: 2,
	            pointRadius: 4,
	        } */
	        ]
	    };

  
  </script>
  
  <script type="text/javascript">
var g_webSocket = null;
window.onload = function() {
    g_webSocket = new WebSocket("ws://localhost:8044/project_first/websocket");
    
    
    /**
     * 웹소켓 사용자 연결 성립하는 경우 호출
     */
    g_webSocket.onopen = function(message) {
        addLineToChatBox("Server is connected.");
    };
    
    
    /**
     * 웹소켓 메시지(From Server) 수신하는 경우 호출
     */
    g_webSocket.onmessage = function(message) {
        addLineToChatBox(message.data);
    };


    /**
     * 웹소켓 사용자 연결 해제하는 경우 호출
     */
    g_webSocket.onclose = function(message) {
        addLineToChatBox("Server is disconnected.");
    };


    /**
     * 웹소켓 에러 발생하는 경우 호출
     */
    g_webSocket.onerror = function(message) {
        addLineToChatBox("Error!");
    };
}


var myVar = setInterval(myTimer, 1000);



function myTimer() {
    
    var tteaa = new Array();
    <c:forEach items="${list}" var="btcprice" >

    tteaa.push('${btcprice.highprice}');

    </c:forEach>
    
    var t = tteaa.toString();
    document.getElementById("demo").innerHTML = t;
}



/**
* 채팅 박스영역에 내용 한 줄 추가
*/
function addLineToChatBox(_line) {
    if (_line == null) {
        _line = "";
    }
    
    var chatBoxArea = document.getElementById("chatBoxArea");
    chatBoxArea.value += _line + "\n";
    chatBoxArea.scrollTop = chatBoxArea.scrollHeight;    
    
    
    

    
    
    
    
    
    
}


/**
* Send 버튼 클릭하는 경우 호출 (서버로 메시지 전송)
*/
function sendButton_onclick() {
    var inputMsgBox = document.getElementById("inputMsgBox");
    var chartbarData = document.getElementById("bar-chart");
    if (inputMsgBox == null || inputMsgBox.value == null || inputMsgBox.value.length == 0) {
        return false;
    }
    
    var chatBoxArea = document.getElementById("chatBoxArea");
    
    if (g_webSocket == null || g_webSocket.readyState == 3) {
        chatBoxArea.value += "Server is disconnected.\n";
        return false;
    }
    
    // 서버로 메시지 전송
    g_webSocket.send(inputMsgBox.value);
    
    inputMsgBox.value = "";
    inputMsgBox.focus();
    
    return true;
}


/**
* Disconnect 버튼 클릭하는 경우 호출
*/
function disconnectButton_onclick() {
    if (g_webSocket != null) {
        g_webSocket.close();    
    }
}


/**
* inputMsgBox 키입력하는 경우 호출
*/
function inputMsgBox_onkeypress() {
    if (event == null) {
        return false;
    }
    
    // 엔터키 누를 경우 서버로 메시지 전송
    var keyCode = event.keyCode || event.which;
    if (keyCode == 13) {
        sendButton_onclick();
    }
}
</script>
  <script>

</script>
  
  
  </head>

  
  <body >
  
    <script type="text/javascript">
  function bchprice();
  
  </script>
  
  <div id = "cointest"></div>
  <br><br><br>
  
  
    <p id="demo"></p>
      <input id="inputMsgBox" style="width: 250px;" type="text" onkeypress="inputMsgBox_onkeypress()">
    <input id="sendButton" value="Send" type="button" onclick="sendButton_onclick()">
    <input id="disconnectButton" value="Disconnect" type="button" onclick="disconnectButton_onclick()">
    <br/>
    <textarea id="chatBoxArea" style="width: 100%;" rows="10" cols="50" readonly="readonly"></textarea>

  
  <div id="chart_div"></div>
  
  
  <table>
<tr>
<td>
	<select class="form-control"onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
    <option value="" selected disabled hidden>Choose here</option>
    <option selected value="charts.do" class="form-control">BTC</option>
    <option value="charteth.do" class="form-control">ETH</option>
</select></td></tr></table>


<!-- Bar charts section start -->
<section id="chartjs-bar-charts">

    
    <!-- Bar Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Magin Order</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body">
                            <div class="height-400">
                        <canvas id="bar-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- // Bar charts section end -->


<!-- Pie charts section start -->
<section id="chartjs-pie-charts">
    <div class="row">
        <!-- Simple Pie Chart -->
        <div class="col-md-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Dominance</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body">
                            <div class="height-400">
                        <canvas id="simple-pie-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Simple Doughnut Chart -->
        <div class="col-md-6 col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Volume</h4>
                    <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                            <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            <li><a data-action="close"><i class="ft-x"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-content collapse show">
                    <div class="card-body">
                            <div class="height-400">
                        <canvas id="simple-doughnut-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
</section>
<!-- // Pie charts section end -->


    <!-- ////////////////////////////////////////////////////////////////////////////-->




<!--     BEGIN VENDOR JS -->
    <script src="theme-assets/vendors/js/vendors.min.js" type="text/javascript"></script>
    
    
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="theme-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN CHAMELEON  JS-->
    <script src="theme-assets/js/core/app-menu-lite.js" type="text/javascript"></script>
    <script src="theme-assets/js/core/app-lite.js" type="text/javascript"></script>
    <!-- END CHAMELEON  JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="theme-assets/js/scripts/charts/chartjs/bar/column.js" type="text/javascript"></script>
    <script src="theme-assets/js/scripts/charts/chartjs/bar/bar.js" type="text/javascript"></script>
    <script src="theme-assets/js/scripts/charts/chartjs/line/line.js" type="text/javascript"></script>
    <script src="theme-assets/js/scripts/charts/chartjs/pie-doughnut/pie-simple.js" type="text/javascript"></script>
    <script src="theme-assets/js/scripts/charts/chartjs/pie-doughnut/doughnut-simple.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>