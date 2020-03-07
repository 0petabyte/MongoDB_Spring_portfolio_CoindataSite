<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
  <script type="text/javascript">
  
  Highcharts.chart('container', {
	  chart: {
	    type: 'spline',
	    animation: Highcharts.svg, // don't animate in old IE
	    marginRight: 10,
	    events: {
	      load: function () {

	        // set up the updating of the chart each second
	        var series = this.series[0];
	        setInterval(function () {
	          var x = (new Date()).getTime(), // current time
	            y = Math.random();
	          series.addPoint([x, y], true, true);
	        }, 1000);
	      }
	    }
	  },

	  time: {
	    useUTC: false
	  },

	  title: {
	    text: 'Live random data'
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
	  series: [{
	    name: 'Random data',
	    data: (function () {
	      // generate an array of random data
	      var data = [],
	        time = (new Date()).getTime(),
	        i;

	      for (i = -19; i <= 0; i += 1) {
	        data.push({
	          x: time + i * 1000,
	          y: Math.random()
	        });
	      }
	      return data;
	    }())
	  }]
	});
  
  </script>
  </head>

  
  
    <body>
        <br><br>
<!-- <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
 -->
        
<!-- <table>
<tr>
<td style=weight:1000px>
TradingView Widget BEGIN
<div class="tradingview-widget-container">
  <div id="tradingview_21a46"></div>
  <div class="tradingview-widget-copyright">TradingView 제공 <a href="https://kr.tradingview.com/symbols/BITFINEX-BTCUSD/" rel="noopener" target="_blank"><span class="blue-text">BTCUSD 차트</span></a></div>
  <script type="text/javascript" src="https://s3.tradingview.com/tv.js"></script>
  <script type="text/javascript">
  new TradingView.widget(
  {
  "width": 1500,
  "height": 610,
  "symbol": "BITFINEX:BTCUSD",
  "interval": "15",
  "timezone": "Etc/UTC",
  "theme": "Light",
  "style": "1",
  "locale": "kr",
  "toolbar_bg": "#f1f3f6",
  "enable_publishing": false,
  "allow_symbol_change": true,
  "details": true,
  "studies": [
    "Volume@tv-basicstudies",
    "BB@tv-basicstudies",
    "RSI@tv-basicstudies",
    "StochasticRSI@tv-basicstudies"
  ],
  "container_id": "tradingview_21a46"
}
  );
  </script>
</div>
TradingView Widget END
</td>
</tr>
</table>

 -->









<!-- Content types section start -->
<section id="content-types">
	<div class="row">
		<div class="col-12 mt-3 mb-1">
			<h4 class="card-title">Ask To</h4>
			<p>암호화화폐에 관심이있어 직접 행하였던 행동을 기반으로 자동 Bot 을만들어 정보를 
			<br> 보기 편하게 구현하였습니다. 건의사항이나 문의사항은 남겨주시면<br>
			적극 반영토록 하겠습니다. 건강한 암호화 화폐 문화를 기원합니다. <br>
			</p>
		</div>
	</div>
	<div class="row match-height">
		<div class="col-xl-6 col-md-6 col-sm-12">
			<div class="card">
				<div class="card-content">
					<div class="card-body">
						
						<p class="card-text">데이터 마이닝 기반 제작한 웹 목록</p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">
							<a href="http://타임뮤직.kr" target="_blank">타임뮤직.kr</a>
						</li>
						<li class="list-group-item">
							<a href="http://코인데이타.kr" target="_blank">코인데이타.kr</a>
						</li>
					
					</ul>
					<div class="card-body">
						<a href="#" class="card-link">광고문의 와 제작문의 받습니다.</a>
						<a href="#" class="card-link">0petabyte@gmail.com</a>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xl-6 col-md-12">
			<div class="card">
				<div class="card-content">
					<div class="card-body">
						<h4 class="card-title">Contact Form</h4>
						<h6 class="card-subtitle text-muted">Support card subtitle</h6>
					</div>
					<div class="card-body">
						<form class="form">
							<div class="form-body">
								<div class="form-group">
									<label for="donationinput1" class="sr-only">Name</label>
									<input type="text" id="donationinput1" class="form-control" placeholder="First Name" name="fname">
								</div>

								<div class="form-group">
									<label for="donationinput3" class="sr-only">E-mail</label>
									<input type="email" id="donationinput3" class="form-control" placeholder="E-mail" name="email">
								</div>

								<div class="form-group">
									<label for="donationinput4" class="sr-only">Contact Number</label>
									<input type="text" id="donationinput4" class="form-control" placeholder="Phone" name="phone">
								</div>
								<div class="form-group">
									<label for="donationinput7" class="sr-only">Message</label>
									<textarea id="donationinput7" rows="5" class="form-control square" name="message" placeholder="message"></textarea>
								</div>

							</div>
							<div class="form-actions center">
								<button type="submit" class="btn btn-outline-primary">Send</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Content types section end -->



    <!-- ////////////////////////////////////////////////////////////////////////////-->

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>


  </body>
</html>