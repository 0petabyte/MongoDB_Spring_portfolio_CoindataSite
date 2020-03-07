<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.*, java.text.*"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
  <head>
  <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({
          google_ad_client: "ca-pub-1313550155608030",
          enable_page_level_ads: true
     });
</script>
  
  
  <!-- Global site tag (gtag.js) - Google Analytics -->
  
  
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-128305810-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-128305810-1');
</script>
  <c:set var="root" value="<%=request.getContextPath()%>" />
  
<!--   <script type="text/javascript">
  $(window).on("load", function(){

	  var config = new Array();
	
	var chartData = new Array();
	
	var chartOptions = new Array();

	<c:forEach items="${price}" var="price" >

		var json = new Object();

		

		chartData.push('10000','200','300','400','500');

	</c:forEach>


  
  </script> -->
  <script type="text/javascript">
  $.ajax({
		type : "POST",
		//dataType: "json",
		dataType : 'text',
		data : allData,
		url : "${root}/charts.do",
		success : function(data) {
			alert(data);
		}
	});
  
  </script>

<script>
var myVar = setInterval(myTimer, 1000);



function myTimer() {
    
    var tteaa = new Array();
    <c:forEach items="${list}" var="btcprice" >

    tteaa.push('${btcprice.highprice}');

    </c:forEach>
    
    var t = tteaa.toString();
    document.getElementById("demo").innerHTML = t;
}
</script>
  
  
    <script type="text/javascript">
    
    

    var namedata = new Array();
    var highprice = new Array();
    var lastprice = new Array();
    var lowprice = new Array();
 
    

	<c:forEach items="${list}" var="btcprice" >

	namedata.push('${btcprice.uniquename.substring(0,8)}');
	highprice.push('${btcprice.highprice}');
	lastprice.push('${btcprice.lastprice}');
	lowprice.push('${btcprice.lowprice}');
	
	


    
    </c:forEach>
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
  
  var chartbarData2 = {
	        labels: coinname2,
	        datasets: [{
	            label: "하락률 % ",
	            data: coinunder,
	            backgroundColor: '#FF4961',
	           
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
  
  
  
  var hourdata = new Array();
  var volumedata = new Array();
  var todayprice = new Array();

	
  
	<c:forEach items="${list3}" var="bitfinex_btcvolumn" >
    
	hourdata.push('${bitfinex_btcvolumn.nowtime}');
	volumedata.push('${bitfinex_btcvolumn.btcvolume}');
	todayprice.push('${bitfinex_btcvolumn.price}');

    
    
    </c:forEach>
    
  
  
  
    var chartlineData = {
    		  /* 	        labels: ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"],
    		   */	       
    		   			labels: hourdata,
    		   			datasets: [{
    		  	            label: "Today Volume",
    		  	            data: volumedata,
    		  	            fill: false,
    		  	            borderDash: [5, 5],
    		  	            borderColor: "#9C27B0",
    		  	            pointBorderColor: "#9C27B0",
    		  	            pointBackgroundColor: "#FFF",
    		  	            pointBorderWidth: 2,
    		  	            pointHoverBorderWidth: 2,
    		  	            pointRadius: 4,
    		  	        }
    		  	        ]
    		  	    };

    		    

    		    
    		    
    		    var chartlineData2 = {
    		  /* 	        labels: ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"],
    		   */	       
    		   			labels: hourdata,
    		   			datasets: [{
    		  	            label: "Today Price",
    		  	            data: todayprice,
    		  	            fill: true,
    		  	            borderDash: [5, 5],
    		  	            borderColor: "#00A5A8",
    		  	            pointBorderColor: "#00A5A8",
    		  	            pointBackgroundColor: "#FFF",
    		  	            pointBorderWidth: 2,
    		  	            pointHoverBorderWidth: 2,
    		  	            pointRadius: 4,
    		  	        }
    		  	        ]
    		  	    };


  
  </script>
  
     <script type="text/javascript">
  
  
  
  var hourdata = new Array();
  var volumedata = new Array();


  
	<c:forEach items="${list4}" var="ChartSendEthDto" >
    
	hourdata.push('${ChartSendEthDto.nowtime}');
	volumedata.push('${ChartSendEthDto.sendcount}');

    
    
    </c:forEach>
    

  
    
    
    var chartlineData3 = {
  /* 	        labels: ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"],
   */	       
   			labels: hourdata,
   			datasets: [{
  	            label: "Today Value",
  	            data: volumedata,
  	            fill: false,
  	            borderDash: [5, 5],
  	            borderColor: "#304FFE",
  	            pointBorderColor: "#7070ea",
  	            pointBackgroundColor: "#FFF",
  	            pointBorderWidth: 2,
  	            pointHoverBorderWidth: 2,
  	            pointRadius: 4,
  	        }
  	        ]
  	    };

    
  
  </script>
  
  
    <style>
  @media( max-width: 640px ) {
    .table{
    	display: none;
    }

  </style>
  </head>
<!--   <p id="demo"></p>
 -->
  
  <body>
  
    <br><br>
  <table>
<tr>
<td>
	<select class="form-control"onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
    <option value="" selected disabled hidden>Choose here</option>
    <option selected value="charts.do" class="form-control">BTC</option>
    <option value="charteth.do" class="form-control">ETH</option>
</select></td></tr></table>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script>
var reload_time = 10;
var reload_chk = '';
var c_chk;

function r_chk()
{
 c_chk = document.cookie;
 if( c_chk.indexOf("ReloadChk=1") > -1 ) reload_chk = "(작동중)";
 else reload_chk = "(정지)";
 $('#reload_btn').val("새로고침 "+reload_time+"초전"+reload_chk );
}

function reload()
{
 c_chk = document.cookie;
 if( c_chk.indexOf("ReloadChk=1") > -1 )
 {
  reload_time -= 1;
  $('#reload_btn').val( "새로고침 "+reload_time+"초전"+reload_chk );
  if( reload_time == 0 ) location.reload();
  setTimeout( "reload()", 1000);
 }
}

$( function(){
 reload();
 r_chk();

 $('#reload_btn').click( function(){
  c_chk = document.cookie;
  ddate = new Date();
  ddate.setDate(ddate.getDate()+300)
  if( c_chk.indexOf("ReloadChk=1") > -1 )
  {
   document.cookie = "ReloadChk=0;path=/;expires="+ddate+";";
   r_chk();
  }
  else
  {
   document.cookie = "ReloadChk=1;path=/;;expires="+ddate+";";
   reload();
   r_chk();
  }
 });

});

</script>

<input type="button" id="reload_btn" value="자동새로고침 10초전" class="btn btn-outline-secondary">

<br><br><br> -->




	<table class="table table-bordered" id="dataTables-example">

		<c:forEach var="btcprice" begin="${startNum}" end="${endNum}"
			items="${list}">

			<th width="10%">${btcprice.uniquename}</th>
		</c:forEach>
		</tr>

		<c:forEach var="btcprice" begin="${startNum}" end="${endNum}"
			items="${list}">

			<td><fmt:formatNumber value="${btcprice.lastprice}"
					pattern="#,###" /></td>

		</c:forEach>
	</table>












	<!-- Bar charts section start -->
<section id="chartjs-bar-charts">
    <!-- Column Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">BTCKRW Price<br>주요거래소 정보입니다</h4>
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
                        <canvas id="column-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Bar Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Magin Order<br>업데이트 주기 : 1분</h4>
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

<!-- line chart section start -->
<section id="chartjs-line-charts">
    <!-- Line Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">volume<br>업데이트 주기 : 1분</h4>
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
                    <div class="card-body chartjs">
                            <div class="height-500">
                        <canvas id="line-chart"></canvas>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- // line chart section end -->


<!-- line chart section start -->
<section id="chartjs-line-charts">
    <!-- Line Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Price<br>업데이트 주기 : 1분</h4>
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
                    <div class="card-body chartjs">
                            <div class="height-500">
                        <canvas id="line-chart2"></canvas>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- // line chart section end -->


<!-- line chart section start -->
<section id="chartjs-line-charts">
    <!-- Line Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">코인전송량 지표<br>업데이트 주기 : 1분</h4>
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
                    <div class="card-body chartjs">
                            <div class="height-500">
                        <canvas id="line-chart3"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- // line chart section end -->


<%-- <!-- Pie charts section start -->
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
</section> --%>
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