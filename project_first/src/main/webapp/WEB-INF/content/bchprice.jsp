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

<!-- <META HTTP-EQUIV="refresh" CONTENT="1"> -->
<meta charset="UTF-8">
<title>Insert title here</title>

    <script type="text/javascript">
    
    

    var highprice = new Array();
    var lastprice = new Array();
    var lowprice = new Array();
 
    

	<c:forEach items="${list}" var="bchprice" >


	highprice.push('${bchprice.bitfinexbab}');
	highprice.push('${bchprice.poloniexabc}');
	highprice.push('${bchprice.binanceabcprice}');
	highprice.push('${bchprice.krobitbchprice}');
	highprice.push('${bchprice.upbitbch}');
	highprice.push('${bchprice.coinonebch}');
	highprice.push('${bchprice.bithumbbch}');
	lowprice.push('${bchprice.bitfinexbsv}');
	lowprice.push('${bchprice.poloniexsv}');
	lowprice.push('${bchprice.binancesvprice}');
	lowprice.push('${bchprice.korbitsvprice}');
	lowprice.push('${bchprice.upbitbsv}');
	lowprice.push('0');
	lowprice.push('${bchprice.bithumbbsv}');
	lastprice.push('${bchprice.bitfinextotal}');
	lastprice.push('${bchprice.polototal}');
	lastprice.push('${bchprice.binancetotal}');
	lastprice.push('${bchprice.kobittotal}');
	lastprice.push('${bchprice.upbittotal}');
	lastprice.push('${bchprice.coinonebch}');
	lastprice.push('${bchprice.bithumbtotal}');
	
	
	


    
    </c:forEach>
    var chartData = {
            labels: ["bitfinex","poloniex","binance","Kobit","Upbit","Coinone","Bithum"],
            datasets: [{
                label: "BAB",
                data: highprice,
                backgroundColor: "#28D094",
                hoverBackgroundColor: "rgba(40,208,148,.9)",
                borderColor: "transparent"
            }, {
                label: "BSV",
                data: lowprice,
                backgroundColor: "#FF4961",
                hoverBackgroundColor: "rgba(255,73,97,.9)",
                borderColor: "transparent"
            }, {
                label: "합계",
                data: lastprice,
                backgroundColor: "#5549ff",
                hoverBackgroundColor: "rgba(127, 118, 252)",
                borderColor: "transparent"
            }]
        };
  </script>

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
  
 

</head>
<body>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
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

<!--  <script language="JavaScript">

// 몇초마다 리프레쉬 시킬건지를 설정하세요
var refreshinterval=10


// 상태바에 남은시간을 보여줄까요? ("yes" 혹은 "no" )
var displaycountdown="yes"

var starttime
var nowtime
var reloadseconds=0
var secondssinceloaded=0

function starttime() {
        starttime=new Date()
        starttime=starttime.getTime()
    countdown()
}

function countdown() {
        nowtime= new Date()
        nowtime=nowtime.getTime()
        secondssinceloaded=(nowtime-starttime)/1000
        reloadseconds=Math.round(refreshinterval-secondssinceloaded)
        if (refreshinterval>=secondssinceloaded) {
        var timer=setTimeout("countdown()",1000)
                if (displaycountdown=="yes") {
                        window.status="이 페이지는 "+reloadseconds+ "초 후에 refresh됩니다"
                }
    }
    else {
        clearTimeout(timer)
                window.location.reload(true)
    }
}
window.onload=starttime
</script> -->
  



<br><br><br>    <br><br>


						<table class="table table-bordered" id="dataTables-example">

						
							<thead>
								<tr align="center">
								<th align="center"></th>
								<th align="center">bitfinex</th>
									<th align="center">poloniex</th>
									<th align="center">binance</th>
									<th align="center">Kobit</th>
									<th align="center">Upbit</th>
									<th align="center">Coinone</th>
									<th align="center">Bithum</th>
									

								</tr>
							</thead>
							<tbody>
							<c:forEach var="bchprice" begin="${startNum}" end="${endNum}" items="${list}" >
								<tr>
								<td>BCH ABC</td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.bitfinexbab}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.poloniexabc}" pattern="#,###" /></td>	
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.binanceabcprice}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.krobitbchprice}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.upbitbch}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.coinonebch}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.bithumbbch}" pattern="#,###" /></td>
								</tr>
								<tr>
								<td>BCH SV</td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.bitfinexbsv}" pattern="#,###" /></td>	
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.poloniexsv}" pattern="#,###" /></td>	
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.binancesvprice}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.korbitsvprice}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.upbitbsv}" pattern="#,###" /></td>
								<td class="testline" align="center">오류</td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.bithumbbsv}" pattern="#,###" /></td>
								</tr>
								<tr>
								<td>합계</td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.bitfinextotal}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.polototal}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.binancetotal}" pattern="#,###" />
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.kobittotal}" pattern="#,###" /></td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.upbittotal}" pattern="#,###" /></td>
								<td class="testline" align="center">오류</td>
								<td class="testline" align="center"><fmt:formatNumber value="${bchprice.bithumbtotal}" pattern="#,###" /></td>
									
				

								</tr>


						</c:forEach>
							</tbody>
						</table>
						
						
						
						<!-- Bar charts section start -->
<section id="chartjs-bar-charts">
    <!-- Column Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">BCH,BAB,BSV KRW Price<br>주요거래소 정보입니다</h4>
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
    </section>
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