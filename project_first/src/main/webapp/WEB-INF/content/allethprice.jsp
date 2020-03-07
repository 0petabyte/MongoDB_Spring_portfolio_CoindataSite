<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.*, java.text.*"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Bitcoin Magin Chart 1tick</title>
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
        
    <script type="text/javascript">
    
    var namedata = new Array();
    var highprice = new Array();
    var lastprice = new Array();
    var lowprice = new Array();
    
    

	<c:forEach items="${list}" var="ethprice" >

	namedata.push('${ethprice.uniquename.substring(0,8)}');
	highprice.push('${ethprice.highprice}');
	lastprice.push('${ethprice.lastprice}');
	lowprice.push('${ethprice.lowprice}');
	
	


    
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
  
  
  var tradevaluename = new Array();
  var longcount = new Array();
  var shortcount = new Array();
  var longper = new Array();
  var shortper = new Array();
	
  
	<c:forEach items="${list2}" var="ethtradeshop" >
    
	tradevaluename.push('${ethtradeshop.tradevaluename}');
	longper.push('${ethtradeshop.longper}');
	longcount.push('${ethtradeshop.longcount}');
	shortper.push('${ethtradeshop.shortper}');
	shortcount.push('${ethtradeshop.shortcount}');
    
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
  
  
  
  var hourdata = new Array();
  var volumedata = new Array();
  var todayprice = new Array();

  
	<c:forEach items="${list3}" var="bitfinex_ethvolumn" >
    
	hourdata.push('${bitfinex_ethvolumn.nowtime}');
	volumedata.push('${bitfinex_ethvolumn.btcvolume}');
	todayprice.push('${bitfinex_ethvolumn.price}');
    
    
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

		<style type="text/css">

		</style>
	</head>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="code/highcharts.js"></script>
<script src="code/modules/exporting.js"></script>
<script src="code/modules/export-data.js"></script>


<div id="container2" style="min-width: 310px; height: 600px; margin: 0 auto"></div>

<!-- <div id="container2" style="min-width: 310px; height: 400px; margin: 0 auto"></div> -->




		<script type="text/javascript">


        binance_eth = 0
        upbit_eth = 0
        bithumb_eth = 0
        korbit_eth = 0
        coinone_eth = 0
        bitfinex_eth = 0
        bitmex_eth = 0
        coinbase_eth = 0
       

    setInterval(function () {
                $.get('http://jiung.net:8010/api/v1/appserver/?format=json', function testaa(data) { 
                var binance_eth_parse = parseFloat(data[0]['binanceeth']);
                var upbit_eth_parse = parseFloat(data[0]['upbiteth']);
                var bithumb_eth_parse = parseFloat(data[0]['bithumbeth']);
                var korbit_eth_parse = parseFloat(data[0]['korbiteth']);
                var coinone_eth_parse = parseFloat(data[0]['coinoneeth']);
                var bitfinex_eth_parse = parseFloat(data[0]['bitfinexeth']);
                var bitmex_eth_parse = parseFloat(data[0]['bitmex_eth']);
                var coinbase_eth_parse = parseFloat(data[0]['coinbase_eth']);
                    
                
                binance_eth = binance_eth_parse
                upbit_eth = upbit_eth_parse
                bithumb_eth = bithumb_eth_parse
                korbit_eth = korbit_eth_parse
                coinone_eth = coinone_eth_parse
                bitfinex_eth = bitfinex_eth_parse
                bitmex_eth = bitmex_eth_parse
                coinbase_eth = coinbase_eth_parse
          
            }); 
        
    }, 1000);
                
          
     

Highcharts.chart('container2', {

chart: {
    type: 'spline',
    animation: Highcharts.svg, // don't animate in old IE
    marginRight: 10,
    events: {
        load: function () {

            // set up the updating of the chart each second
            var series = this.series[0];
            var series_1 = this.series[1];
            var series_2 = this.series[2];
            var series_3 = this.series[3];
            var series_4 = this.series[4];
            var series_5 = this.series[5];
            var series_6 = this.series[6];
            var series_7 = this.series[7];
            setInterval(function () {
                var x = (new Date()).getTime(), // current time
                    y = binance_eth,
                    z = upbit_eth,
                    g = bithumb_eth,
                    h = korbit_eth,
                    i = coinone_eth,
                    j = bitfinex_eth,
                    k = bitmex_eth,
                    l = coinbase_eth
                   
                    
                   
                series.addPoint([x, y], true, true);
                series_1.addPoint([x, z], true, true);
                series_2.addPoint([x, g], true, true);
                series_3.addPoint([x, h], true, true);
                series_4.addPoint([x, i], true, true);
                series_5.addPoint([x, j], true, true);
                series_6.addPoint([x, k], true, true);
                series_7.addPoint([x, l], true, true);
            }, 1000);
        }
    }
},

time: {
    useUTC: false
},

title: {
    text: 'ETH price'
},
xAxis: {
    type: 'datetime',
    tickPixelInterval: 150
},
yAxis: {
    title: {
        text: 'Value'
    },
    plotLines: [{
        value: 0,
        width: 1,
        color: '#808080'
    }]
},

tooltip: {
    headerFormat: '<b>{series.name}</b><br/>',
    pointFormat: '{point.x:%Y-%m-%d %H:%M:%S}<br/>{point.y:.2f}'
},
legend: {
    enabled: false
},
exporting: {
    enabled: false
},
legend: {
	reversed: true
    },
series: [{
    name: 'binance_eth',
    data: (function () {
        // generate an array of random data
        var data = [],
            time = (new Date()).getTime(),
            i;

        for (i = -10; i <= 0; i += 1) {
            data.push({
                x: time + i * 1000,
                y: binance_eth
               
               
            });
        }
        return data;
    }())
},
{
    name: 'upbit_eth',
    data: (function () {
        // generate an array of random data
        var data = [],
            time = (new Date()).getTime(),
            i;

        for (i = -10; i <= 0; i += 1) {
            data.push({
                x: time + i * 1000,
                z: upbit_eth
               
               
            });
        }
        return data;
    }())
},
{
    name: 'bithumb_eth',
    data: (function () {
        // generate an array of random data
        var data = [],
            time = (new Date()).getTime(),
            i;

        for (i = -10; i <= 0; i += 1) {
            data.push({
                x: time + i * 1000,
                g: bithumb_eth
               
               
            });
        }
        return data;
    }())
},
{
    name: 'korbit_eth',
    data: (function () {
        // generate an array of random data
        var data = [],
            time = (new Date()).getTime(),
            i;

        for (i = -10; i <= 0; i += 1) {
            data.push({
                x: time + i * 1000,
                g: korbit_eth
               
               
            });
        }
        return data;
    }())
},
{
    name: 'coinone_eth',
    data: (function () {
        // generate an array of random data
        var data = [],
            time = (new Date()).getTime(),
            i;

        for (i = -10; i <= 0; i += 1) {
            data.push({
                x: time + i * 1000,
                i: coinone_eth
               
               
            });
        }
        return data;
    }())
},
{
    name: 'bitfinex_eth',
    data: (function () {
        // generate an array of random data
        var data = [],
            time = (new Date()).getTime(),
            i;

        for (i = -10; i <= 0; i += 1) {
            data.push({
                x: time + i * 1000,
                j: bitfinex_eth
               
               
            });
        }
        return data;
    }())
},
{
    name: 'coinbase_eth',
    data: (function () {
        // generate an array of random data
        var data = [],
            time = (new Date()).getTime(),
            i;

        for (i = -10; i <= 0; i += 1) {
            data.push({
                x: time + i * 1000,
                l: coinbase_eth
               
               
            });
        }
        return data;
    }())
},
{
    name: 'bitmex_eth',
    data: (function () {
        // generate an array of random data
        var data = [],
            time = (new Date()).getTime(),
            i;

        for (i = -10; i <= 0; i += 1) {
            data.push({
                x: time + i * 1000,
                k: bitmex_eth
               
               
            });
        }
        return data;
    }())
}

]
});
               

            

        </script>
        



		        <script>

            // 천단위 콤마 함수
            function numberWithCommas(x) {
                return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            }


            
  
            function coinprice(){
                $.get('http://jiung.net:8010/api/v1/appserver/?format=json', function(data) { 
                    var coinonebch = parseFloat(data[0]['coinonebch']);
                    var bitfinexbab = parseFloat(data[0]['bitfinexbab']);
                    var bitfinexbsv = parseFloat(data[0]['bitfinexbsv']);
                    var bitfinextotal = parseFloat(data[0]['bitfinextotal']);
                    var poloniexabc = parseFloat(data[0]['poloniexabc']);
                    var poloniexsv = parseFloat(data[0]['poloniexsv']);
                    var polototal = parseFloat(data[0]['polototal']);
                    var upbitbch = parseFloat(data[0]['upbitbch']);
                    var upbitbsv = parseFloat(data[0]['upbitbsv']);
                    var upbittotal = parseFloat(data[0]['upbittotal']);
                    var kobittotal = parseFloat(data[0]['kobittotal']);
                    var korbitsvprice = parseFloat(data[0]['korbitsvprice']);
                    var krobitbchprice = parseFloat(data[0]['krobitbchprice']);
                    var binanceabcprice = parseFloat(data[0]['binanceabcprice']);
                    var binancesvprice = parseFloat(data[0]['binancesvprice']);
                    var binancetotal = parseFloat(data[0]['binancetotal']);
                    var bithumbbch = parseFloat(data[0]['bithumbbch']);
                    var bithumbbsv = parseFloat(data[0]['bithumbbsv']);
                    var bithumbtotal = parseFloat(data[0]['bithumbtotal']);
                    
                    var bitfinexbtc = parseFloat(data[0]['bitfinexbtc']);
                    var bitfinexeth = parseFloat(data[0]['bitfinexeth']);
                    var polobtc = parseFloat(data[0]['polobtc']);
                    var poloeth = parseFloat(data[0]['poloeth']);
                    var binancebtc = parseFloat(data[0]['binancebtc']);
                    var binanceeth = parseFloat(data[0]['binanceeth']);
                    var korbitbtc = parseFloat(data[0]['korbitbtc']);
                    var korbiteth = parseFloat(data[0]['korbiteth']);
                    
                    var upbitbtc = parseFloat(data[0]['upbitbtc']);
                    var upbiteth = parseFloat(data[0]['upbiteth']);
                    var coinonebtc = parseFloat(data[0]['coinonebtc']);
                    var coinoneeth = parseFloat(data[0]['coinoneeth']);
                    var bithumbbtc = parseFloat(data[0]['bithumbbtc']);
                    var bithumbeth = parseFloat(data[0]['bithumbeth']);
                    var bitmex_btc = parseFloat(data[0]['bitmex_btc']);
                    var coinbase_btc = parseFloat(data[0]['coinbase_btc']);
                    var bitmex_eth = parseFloat(data[0]['bitmex_eth']);
                    var coinbase_eth = parseFloat(data[0]['coinbase_eth']);

                    var ethmaxlist = Math.max(bitfinexeth,poloeth,korbiteth,bithumbeth,binanceeth,coinoneeth,upbiteth,bitmex_eth,coinbase_eth) ;
                    var btcmaxlist = Math.max(bitfinexbtc,polobtc,korbitbtc,bithumbbtc,binancebtc,coinonebtc,upbitbtc,coinbase_btc,bitmex_btc) ;
                    var bchmaxlist = Math.max(bitfinexbab,poloniexabc,krobitbchprice,bithumbbch,binanceabcprice,coinonebch,upbitbch) ;
                    var bsvmaxlist = Math.max(bitfinexbsv,poloniexsv,korbitsvprice,bithumbbsv,binancesvprice,upbitbsv) ;
                    
                    $('#bitmex_eth').html(numberWithCommas(bitmex_eth)+'('+(numberWithCommas(((bitmex_eth-ethmaxlist)/bitmex_eth*100).toFixed(2)))+'%)');
                    $('#coinbase_eth').html(numberWithCommas(coinbase_eth)+'('+(numberWithCommas(((coinbase_eth-ethmaxlist)/coinbase_eth*100).toFixed(2)))+'%)');
                    $('#coinbase_btc').html(numberWithCommas(coinbase_btc)+'('+(numberWithCommas(((coinbase_btc-btcmaxlist)/coinbase_btc*100).toFixed(2)))+'%)'); 
                    $('#bitmex_btc').html(numberWithCommas(bitmex_btc)+'('+(numberWithCommas(((bitmex_btc-btcmaxlist)/bitmex_btc*100).toFixed(2)))+'%)'); 
                    $('#bitfinexbtc').html(numberWithCommas(bitfinexbtc)+'('+(numberWithCommas(((bitfinexbtc-btcmaxlist)/bitfinexbtc*100).toFixed(2)))+'%)'); 
                    $('#bitfinexeth').html(numberWithCommas(bitfinexeth)+'('+(numberWithCommas(((bitfinexeth-ethmaxlist)/bitfinexeth*100).toFixed(2)))+'%)');
                    $('#polobtc').html(numberWithCommas(polobtc)+'('+(numberWithCommas(((polobtc-btcmaxlist)/polobtc*100).toFixed(2)))+'%)');                    
                    $('#poloeth').html(numberWithCommas(poloeth)+'('+(numberWithCommas(((poloeth-ethmaxlist)/poloeth*100).toFixed(2)))+'%)');
                    $('#binancebtc').html(numberWithCommas(binancebtc)+'('+(numberWithCommas(((binancebtc-btcmaxlist)/binancebtc*100).toFixed(2)))+'%)');
                    $('#binanceeth').html(numberWithCommas(binanceeth)+'('+(numberWithCommas(((binanceeth-ethmaxlist)/binanceeth*100).toFixed(2)))+'%)');                  
                    $('#korbitbtc').html(numberWithCommas(korbitbtc)+'('+(numberWithCommas(((korbitbtc-btcmaxlist)/korbitbtc*100).toFixed(2)))+'%)');
                    $('#korbiteth').html(numberWithCommas(korbiteth)+'('+(numberWithCommas(((korbiteth-ethmaxlist)/korbiteth*100).toFixed(2)))+'%)');
                    $('#upbitbtc').html(numberWithCommas(upbitbtc)+'('+(numberWithCommas(((upbitbtc-btcmaxlist)/upbitbtc*100).toFixed(2)))+'%)');
                    $('#upbiteth').html(numberWithCommas(upbiteth)+'('+(numberWithCommas(((upbiteth-ethmaxlist)/upbiteth*100).toFixed(2)))+'%)'); 
                    $('#coinonebtc').html(numberWithCommas(coinonebtc)+'('+(numberWithCommas(((coinonebtc-btcmaxlist)/coinonebtc*100).toFixed(2)))+'%)');
                    $('#coinoneeth').html(numberWithCommas(coinoneeth)+'('+(numberWithCommas(((coinoneeth-ethmaxlist)/coinoneeth*100).toFixed(2)))+'%)'); 
                    $('#bithumbbtc').html(numberWithCommas(bithumbbtc)+'('+(numberWithCommas(((bithumbbtc-btcmaxlist)/bithumbbtc*100).toFixed(2)))+'%)');
                    $('#bithumbeth').html(numberWithCommas(bithumbeth)+'('+(numberWithCommas(((bithumbeth-ethmaxlist)/bithumbeth*100).toFixed(2)))+'%)'); 
                    
                    
                    
                    
                    
                    
                    $('#coinonebch').html(numberWithCommas(coinonebch)+'('+(numberWithCommas(((coinonebch-bchmaxlist)/coinonebch*100).toFixed(2)))+'%)'); 
                    $('#bitfinexbab').html(numberWithCommas(bitfinexbab)+'('+(numberWithCommas(((bitfinexbab-bchmaxlist)/bitfinexbab*100).toFixed(2)))+'%)');
                    $('#bitfinexbsv').html(numberWithCommas(bitfinexbsv)+'('+(numberWithCommas(((bitfinexbsv-bsvmaxlist)/bitfinexbsv*100).toFixed(2)))+'%)');                    
                    $('#bitfinextotal').html(numberWithCommas(bitfinextotal));
                    $('#poloniexabc').html(numberWithCommas(poloniexabc)+'('+(numberWithCommas(((poloniexabc-bchmaxlist)/poloniexabc*100).toFixed(2)))+'%)');
                    $('#poloniexsv').html(numberWithCommas(poloniexsv)+'('+(numberWithCommas(((poloniexsv-bsvmaxlist)/poloniexsv*100).toFixed(2)))+'%)');                  
                    $('#polototal').html(numberWithCommas(polototal));
                    $('#upbitbch').html(numberWithCommas(upbitbch)+'('+(numberWithCommas(((upbitbch-bchmaxlist)/upbitbch*100).toFixed(2)))+'%)');
                    $('#upbitbsv').html(numberWithCommas(upbitbsv)+'('+(numberWithCommas(((upbitbsv-bsvmaxlist)/upbitbsv*100).toFixed(2)))+'%)');
                    $('#upbittotal').html(numberWithCommas(upbittotal)); 
                    $('#kobittotal').html(numberWithCommas(kobittotal));
                    $('#korbitsvprice').html(numberWithCommas(korbitsvprice)+'('+(numberWithCommas(((korbitsvprice-bsvmaxlist)/korbitsvprice*100).toFixed(2)))+'%)');
                    $('#krobitbchprice').html(numberWithCommas(krobitbchprice)+'('+(numberWithCommas(((krobitbchprice-bchmaxlist)/krobitbchprice*100).toFixed(2)))+'%)'); 
                    $('#binanceabcprice').html(numberWithCommas(binanceabcprice)+'('+(numberWithCommas(((binanceabcprice-bchmaxlist)/binanceabcprice*100).toFixed(2)))+'%)');
                    $('#binancesvprice').html(numberWithCommas(binancesvprice)+'('+(numberWithCommas(((binancesvprice-bsvmaxlist)/binancesvprice*100).toFixed(2)))+'%)');     
                    $('#binancetotal').html(numberWithCommas(binancetotal)); 
                    $('#bithumbbch').html(numberWithCommas(bithumbbch)+'('+(numberWithCommas(((bithumbbch-bchmaxlist)/bithumbbch*100).toFixed(2)))+'%)');
                    $('#bithumbbsv').html(numberWithCommas(bithumbbsv)+'('+(numberWithCommas(((bithumbbsv-bsvmaxlist)/bithumbbsv*100).toFixed(2)))+'%)');
                    $('#bithumbtotal').html(numberWithCommas(bithumbtotal));
                });
            }


            


           
            function CurrentTime() {
                var d = new Date();
                $("#lastUpdate").html(d.toString());
            }
            
          
            function proc() {
                try {
                	coinprice(); 
                    CurrentTime(); 
                } catch(e){
                    
                } finally {
                    setTimeout("proc()", 1000); 
                }
            }
        </script>
   <body onLoad="proc()">
    <br><br>
<!-- <div class="form-group">
  <label for="usr">Name:<input type="text" class="form-control" id="usr"></label>


  <label for="pwd">Password:<input type="password" class="form-control" id="userpass"></label>
  <input type="button" id="login_btn" value="로그인" class="btn btn-outline-secondary">
  <input type="button" id="reload_btn" value="회원가입" class="btn btn-outline-secondary" onclick="location.href='writeform.do'">
</div> -->
<!-- <table class="table table-bordered" id="dataTables-example">


		 <thead class="thead-light">
			<tr>
				<td>업데이트:1초</td>
				<td colspan="6">현재 거래소 가격(가장 높은 거래소 대비 가격)</td>
				<td colspan="3" id="lastUpdate"></td>
			</tr>
			<tr align="center">
				<th align="center">비트코인</th>
				<th align="center">bitfinex</th>
				<th align="center">poloniex</th>
				<th align="center">binance</th>
				<th align="center">bitmex</th>
				<th align="center">coinbase</th>
				<th align="center">Kobit</th>
				<th align="center">Upbit</th>
				<th align="center">Coinone</th>
				<th align="center">Bithumb</th>


			</tr>
		</thead>
		<tbody>

			<tr>
				<td>현재가격</td>
				<td id="bitfinexbtc" class="testline" align="center"></td>
				<td id="polobtc"></td>
				<td id="binancebtc"></td>
				<td id=coinbase_btc></td>
				<td id="bitmex_btc"></td>
				<td id="korbitbtc"></td>
				<td id="upbitbtc" class="target"></td>
				<td id="coinonebtc"></td>
				<td id="bithumbbtc"></td>
			</tr>

		</tbody>
	</table>


 -->











<div style="overflow:auto">


<table class="table table-bordered" id="dataTables-example">


		 <thead class="thead-light">

			<tr align="center">
				<th align="center">이더리움</th>
				<th align="center">bitfinex</th>
				<th align="center">poloniex</th>
				<th align="center">binance</th>
				<th align="center">coinbase</th>
				<th align="center">bitmex</th>
				<th align="center">Kobit</th>
				<th align="center">Upbit</th>
				<th align="center">Coinone</th>
				<th align="center">Bithumb</th>


			</tr>
		</thead>
		<tbody>

			<tr>
				<td>현재가격</td>
				<td id="bitfinexeth" class="testline" align="center"></td>
				<td id="poloeth"></td>
				<td id="binanceeth"></td>
				<td id="bitmex_eth"></td>
				<td id="coinbase_eth"></td>
				<td id="korbiteth"></td>
				<td id="upbiteth"></td>
				<td id="coinoneeth"></td>
				<td id="bithumbeth"></td>
			</tr>
		</tbody>
	</table>


</div>




        <hr>
        
        
        
     <!-- Bar charts section start -->
<section id="chartjs-bar-charts">
    <!-- Column Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">ETHKRW Price<br>주요거래소 정보입니다</h4>
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


<!-- line chart section start -->
<section id="chartjs-line-charts">
    <!-- Line Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">price<br>업데이트 주기 : 1분</h4>
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
