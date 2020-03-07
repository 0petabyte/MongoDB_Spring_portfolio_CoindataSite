<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*, java.text.*"  %>

<html>
<head>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
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
<script type="text/javascript" src="dist/js/bootstrap-multiselect.js"></script>
<link rel="stylesheet" href="dist/css/bootstrap-multiselect.css" type="text/css">
  <title>Bootstrap Example</title>

  <meta charset="utf-8">
<!-- 
  <meta name="viewport" content="width=device-width, initial-scale=1"> -->


<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->

<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 -->

<!-- 게시글 클릭시 보이게 -->


<script type="text/javascript">
	$(function() {
		$("td.testline").click(function() {
			
			if ($(this).parent().next().css("display") == "none") {
				$(this).parent().next().css("display", "");
			} else {
				$(this).parent().next().css("display", "none");
			}
		});
	});
</script>

<script type="text/javascript">
	function enterkey() {
		if (window.event.keyCode == 13) {

			document.search.submit();
		}
	}
</script>


<script>
	function searchbutton_click() {

		document.search.submit();

	}
</script>



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
  

  var coinname = new Array();
  var coincnt = new Array();
  var bidtotal = new Array();
  var asktotal = new Array();

	
  
	<c:forEach items="${list2}" var="order_cnt" begin="0" end="10">
    
	coinname.push('${order_cnt.coin}');
	coincnt.push('${order_cnt.whaletotal}');
	bidtotal.push('${order_cnt.bidtotal}');
	asktotal.push('${order_cnt.asktotal}');


    
    
    </c:forEach>
    
    

    

    
  
  var chartbarData = {
	        labels: coinname,
	        datasets: [{
	            label: "총Platypus+Whale ",
	            data: coincnt,
	            backgroundColor: '#5549ff',
	           
	            borderColor: "transparent"
	        }, {
	            label: "매수",
	            data:  bidtotal,
	            backgroundColor: "#28D094",
	            
	            borderColor: "transparent"
	        }, {
	            label: "매도",
	            data:  asktotal,
	            backgroundColor: "#FF4961",
	           
	            borderColor: "transparent"
	        }]
	    };


  
  </script>

<script type="text/javascript">






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
		  	            fill: false,
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



    
    
    var chartlineData3 = {
  /* 	        labels: ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"],
   */	       
   			labels: hourdata,
   			datasets: [{
  	            label: "Today Price",
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

<script>
// Chart Data

  var coinname = new Array();
  var coincnt = new Array();

	
  
	<c:forEach items="${list3}" var="order_cnt" begin="0" end="5">
    
	coinname.push('${order_cnt.coin}'+'코인의 매수는:'+'${order_cnt.whalebid}'+'건 매도는:'+'${order_cnt.whaleask}'+'건이 있습니다');
	coincnt.push('${order_cnt.whalecnt}');


    
    
    </c:forEach>
    
  


    var chartpieData = {
        labels: coinname,
        datasets: [{
            label: "My First dataset",
            data: coincnt,
            backgroundColor: ['#666EE8', '#28D094', '#FF4961','#1E9FF2', '#FF9149'],
        }]
    };

</script>

<script type="text/javascript">

// Chart Data


  var like = new Array();
  var likecnt = new Array();

	
  
	<c:forEach items="${list4}" var="order_cnt" begin="0" end="5">
    
	
	like.push('${order_cnt.coin}'+'코인의 매수는:'+'${order_cnt.platypusbid}'+'건 매도는:'+'${order_cnt.platypusask}'+'건이 있습니다');
	likecnt.push('${order_cnt.platypuscnt}');

    
    
    </c:forEach>


var chartdonutData = {
    labels: like,
    datasets: [{
        label: "My First dataset",
        data: likecnt,
        backgroundColor: ['#666EE8', '#28D094', '#FF4961','#1E9FF2', '#FF9149'],
    }]
};

</script>
</head>


<body>


<!-- Bar charts section start -->
<section id="chartjs-bar-charts">

    
    <!-- Bar Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Coin index <br>
                   30초단위로 업데이트 됩니다. (국내 업비트만 해당됩니다.)
                   <br>이용율에 따라 거래소 추가예정입니다. 많은 이용 부탁드립니다.</h4>
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
                            <div class="height-600">
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
                    <h4 class="card-title">Whale 매수 매도 분석<br>
                    단일거래 1억원 이상 비율입니다.</h4>
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
                    <h4 class="card-title">Platypus 매수 매도 분석
                   <br> 단일 거래 1000만원 이상 비율입니다.</h4>
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






			<script type="text/javascript">
			
			$(document).ready(function(){
				
			var windowWidth = $( window ).width();
			
			 if(windowWidth > 500) {
				
					$('#yearchose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px', 
						nonSelectedText : "원하는 년도를 선택해주세요",

					});
				
			 } 
			 else {
					 
						$('#yearchose').multiselect({

							enableClickableOptGroups : true,
							enableCollapsibleOptGroups : true,
							enableFiltering : true,
							includeSelectAllOption : true,
							collapseOptGroupsByDefault : true,
							buttonWidth : '100px', 
							nonSelectedText : "년도",

						});
				
			 
			 }});
			
			</script>


			<script type="text/javascript">
			
			$(document).ready(function(){
				
			var windowWidth = $( window ).width();
			
			 if(windowWidth > 500) {
				
					$('#rankchose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px', 
						nonSelectedText : "원하는 랭킹를 선택해주세요",

					});
				
			 } 
			 else {
					 
						$('#rankchose').multiselect({

							enableClickableOptGroups : true,
							enableCollapsibleOptGroups : true,
							enableFiltering : true,
							includeSelectAllOption : true,
							collapseOptGroupsByDefault : true,
							buttonWidth : '100px', 
							nonSelectedText : "랭킹",

						});
				
			 
			 }});

		

</script>

			<script type="text/javascript">
			
			$(document).ready(function(){
				
			var windowWidth = $( window ).width();
			
			 if(windowWidth > 500) {
				
					$('#jangrechose').multiselect({

						enableClickableOptGroups : true,
						enableCollapsibleOptGroups : true,
						enableFiltering : true,
						includeSelectAllOption : true,
						collapseOptGroupsByDefault : true,
						buttonWidth : '300px', 
						nonSelectedText : "원하는 장르를 선택해주세요",

					});
				
			 } 
			 else {
					 
						$('#jangrechose').multiselect({

							enableClickableOptGroups : true,
							enableCollapsibleOptGroups : true,
							enableFiltering : true,
							includeSelectAllOption : true,
							collapseOptGroupsByDefault : true,
							buttonWidth : '100px', 
							nonSelectedText : "장르",

						});
				
			 
			 }});




</script>



<!-- Bordered table start -->
<%-- <div class="row">

	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Total</h4>
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
					<p class="card-text">Add <code>.table-bordered</code> for borders on all sides of the table and cells.</p>
				</div>
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover" id="dataTables-example">
						<thead>
							<tr >
								<th>#</th>
								<th>BitCoin</th>
								<th>Ethereum</th>
								<th>Alts Coin</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@TwBootstrap</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">4</th>
								<td >Larry the Bird</td>
								<!-- <td colspan="2">Larry the Bird</td> -->
								<td>@twitter</td>
								<td>@Kakao</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>


 --%>
 
 

 
 
 
<%--  
		<div class="container">
			<form name="search" method="get" action="news.do"
				onsubmit="return check()">
				<!-- onsubmit="return check()" 제거 -->

					
				<table>
				<tr>
				<td>
				<select class="form-control"onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
    <option value="" selected disabled hidden>Choose here</option>
    <option selected value="main.do" class="form-control">전체기사보기</option>
    <option value="erapopsonglist.do" class="form-control">오늘기사만보기</option>
</select></td>


				<td>



								<select id="yearchose" multiple="multiple" name="yearchose"
									class="form-control">


									<optgroup label="1960">

										<%
											for (int i = 1964; i <= 1969; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="1970">
										<%
											for (int i = 1970; i <= 1979; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="1980">
										<%
											for (int i = 1980; i <= 1989; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="1990">
										<%
											for (int i = 1990; i <= 1999; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="2000">
										<%
											for (int i = 2000; i <= 2009; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									<optgroup label="2010">
										<%
											for (int i = 2010; i <= 2017; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</optgroup>
									</select></td><td>
								<select id="rankchose" multiple="multiple"
									name="rankchose" class="form-control">


										<optgroup label="1~10">

											<%
												for (int i = 1; i <= 10; i++) {
											%>
											<option value="<%="s"+i+"s"%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="11~20">
											<%
												for (int i = 11; i <= 20; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="21~30">
											<%
												for (int i = 21; i <= 30; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="31~40">
											<%
												for (int i = 31; i <= 40; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="41~50">
											<%
												for (int i = 41; i <= 50; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="51~60">
											<%
												for (int i = 51; i <= 60; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="61~70">
											<%
												for (int i = 61; i <= 70; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="71~80">
											<%
												for (int i = 71; i <= 80; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="81~90">
											<%
												for (int i = 81; i <= 90; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
										<optgroup label="91~100">
											<%
												for (int i = 91; i <= 100; i++) {
											%>
											<option value="<%=i%>"><%=i%></option>
											<%
												}
											%>
										</optgroup>
	</select>
</td><td>

							
								 <select id="jangrechose" multiple="multiple"
									name="jangrechose" class="form-control" >
										<option value="Ballad">Ballad</option>
										
										<option value="Rock">Rock</option>
										<option value="Adult Contemporary">Adult Contemporary</option>
										<option value="Folk">Folk</option>
										<option value="Dance">Dance</option>
										<option value="Hip-hop">Hip-hop</option>
										<option value="Soul">Soul</option>
										<option value="Korean Movie">KoreanMovie</option>
										<option value="Blues">Blues</option>
								</select>
							 <br>


						
						


</td></tr>

					</table>
				
				<br>
				<table>
					<tr>

					</tr>
				</table>
		</form>
		</div>

 --%>

<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<!-- <h5 class="card-title">CoinNews</h5> -->
				
				<form name="search" method="get" action="whale.do"
				onsubmit="return check()">
				<table><tr>
						<td>
						
<!-- 						<select class="form-control" id="whatday"
							name="whatday">
								<option value="">NEWS기간</option>
							    <option value="todaynews">오늘NEWS</option>
								<option value="totalnews">전체NEWS</option>
								
								
						</select> -->
		
<!-- 	<select class="form-control"onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
    <option value="" selected disabled hidden>Choose here</option>
    <option selected value="news.do" class="form-control">오늘글</option>
    <option value="totalnews.do" class="form-control">전체글</option>
</select></td>
						
						</td>
												<td><select class="form-control" id="keyField"
							name="keyField">
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="newtime">날짜</option>
						</select></td> -->
												<td>
<select class="selectpicker" multiple data-live-search="true" id="coinchose" name="coinchose" >
<option value="ADT">ADT</option>
<option value="ABT">ABT</option>
<option value="ADA">ADA</option>
<option value="ADX">ADX</option>
<option value="AE">AE</option>
<option value="ARDR">ARDR</option>
<option value="ARK">ARK</option>
<option value="BAT">BAT</option>
<option value="BCD">BCD</option>
<option value="BCH">BCH</option>
<option value="BHPC">BHPC</option>
<option value="BTC">BTC</option>
<option value="BTG">BTG</option>
<option value="CMT">CMT</option>
<option value="CTXC">CTXC</option>
<option value="CVC">CVC</option>
<option value="DASH">DASH</option>
<option value="DATA">DATA</option>
<option value="DMT">DMT</option>
<option value="ELF">ELF</option>
<option value="EMC2">EMC2</option>
<option value="ENJ">ENJ</option>
<option value="EOS">EOS</option>
<option value="ETHOS">ETHOS</option>
<option value="GAS">GAS</option>
<option value="GNT">GNT</option>
<option value="GRS">GRS</option>
<option value="GTO">GTO</option>
<option value="HSR">HSR</option>
<option value="ICX">ICX</option>
<option value="IGNIS">IGNIS</option>
<option value="INS">INS</option>
<option value="IOST">IOST</option>
<option value="IOTA">IOTA</option>
<option value="IQ">IQ</option>
<option value="ITC">ITC</option>
<option value="KMD">KMD</option>
<option value="KNC">KNC</option>
<option value="LINK">LINK</option>
<option value="LRC">LRC</option>
<option value="LSK">LSK</option>
<option value="LTC">LTC</option>
<option value="MCO">MCO</option>
<option value="MEDX">MEDX</option>
<option value="MER">MER</option>
<option value="MFT">MFT</option>
<option value="MITH">MITH</option>
<option value="MTL">MTL</option>
<option value="NEO">NEO</option>
<option value="ONG">ONG</option>
<option value="ONT">ONT</option>
<option value="OST">OST</option>
<option value="PAY">PAY</option>
<option value="PIVX">PIVX</option>
<option value="PLY">PLY</option>
<option value="POWR">POWR</option>
<option value="PPT">PPT</option>
<option value="QTUM">QTUM</option>
<option value="RDN">RDN</option>
<option value="REP">REP</option>
<option value="RFR">RFR</option>
<option value="RNT">RNT</option>
<option value="SALT">SALT</option>
<option value="SBD">SBD</option>
<option value="SC">SC</option>
<option value="SNT">SNT</option>
<option value="SRN">SRN</option>
<option value="STEEM">STEEM</option>
<option value="STORJ">STORJ</option>
<option value="STORM">STORM</option>
<option value="STRAT">STRAT</option>
<option value="THETA">THETA</option>
<option value="TIX">TIX</option>
<option value="TRUE">TRUE</option>
<option value="TRX">TRX</option>
<option value="UPP">UPP</option>
<option value="VTC">VTC</option>
<option value="WAVES">WAVES</option>
<option value="WAX">WAX</option>
<option value="WTC">WTC</option>
<option value="XEM">XEM</option>
<option value="XLM">XLM</option>
<option value="XMR">XMR</option>
<option value="XRP">XRP</option>
<option value="XTZ">XTZ</option>
<option value="ZEC">ZEC</option>
<option value="ZIL">ZIL</option>
<option value="ZRX">ZRX</option>
<option value="DCR">DCR</option>
<option value="ETC">ETC<option>
<option value="ETH">ETH</option>
<option value="LOOM">LOOM</option>
<option value="POLY">POLY</option>
<option value="PST">PST</option>
<option value="VET">VET</option>
<option value="" selected disabled hidden>암호화폐 선택</option>
</select>
							</td>	
<!-- 						<td width=350px;><input type="hidden" name="search_param" value="all"
							id="search_param"> <input type="text"
							style="weight: 100%; height:41px;" class="form-control" name="keyWord"
							placeholder="검색어를 입력해주세요.EX)btc,eth,xrp.." onkeyup="enterkey()">
							</td> -->
						<td>

							<button type="button" style="weight: 100px; height:41px;" onclick="searchbutton_click()" class="btn btn-outline-secondary" >검색하기</button>
						</td>

					
						

 
</tr></table></form>

 
																	
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
					<p class="card-text">		<c:if test="${count==0}">
				<b>저장된 데이터가 없습니다.</b>
		</c:if>
		<c:if test="${count>0}">
								<!-- 게시글의 갯수가 red 색상 -->
								
				<b>   오늘은 <span style="color:red;">${count}</span>개의 고래 거래가 있습니다.<br>
				누적이아닌 한번의 거래액의 채결금액 기준입니다<br>
				고래유형 Platypus:1000만원이상 / Whale:1억이상  </b>

				<br>
		</c:if>
					<p><span class="text-bold-600">DB Time:</span> <%

 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 String today = formatter.format(new java.util.Date());

 out.println(today);

%></p>



					<div class="table-responsive">
						<table class="table table-hover" id="dataTables-example">
							<thead>
								<tr align="center">
									<th align="center">#</th>
									<th align="center">거래번호</th>
									<th align="center">한번에거래된액수</th>
									<th align="center">코인갯수</th>
									<th align="center">코인가격</th>

									<th align="center">거래시각</th>
									<th align="center">bid(매수)/ask(매도)</th>
									<th align="center">거래소</th>
									<th align="center">코인명</th>
									<th align="center">고래유형</th>
									

									

								</tr>
							</thead>
							<tbody>
							<c:forEach var="orderbook" begin="${startNum}" end="${endNum}" items="${list}" >
								<tr>
								<td class="testline" align="center">${no}</td>	
								<c:set var="no" value="${no-1}"/>
								<td>${orderbook.contno}</td>
								

							    <td><fmt:formatNumber value="${orderbook.cointotal}" pattern="#,###"/></td>
							    <td>${orderbook.order}</td>
							    <td><fmt:formatNumber value="${orderbook.coinprice}" pattern="#,###"/></td>

							    <td>${orderbook.tradetime}</td>
							    <td>${orderbook.tradetype}</td>
							    <td>${orderbook.market}</td>
							    <td>${orderbook.coinname}</td>
							    <td>${orderbook.whale}</td>


						</c:forEach>
							</tbody>
						</table>
					
						
									   <!-- 페이징 -->   
<nav aria-label="Page navigation example">
	   <table style="margin: 0 auto;">
	   
	   	<tr>
	   		<td align="center">

	   			<ul class="pagination">
				<%@ page import="com.project.*"%>
	   			   			<c:if test="${startPage>1}">
	   				 <li class="page-item" ><a class="page-link" href="whale.do?${nowurl}&pageNum=${startPage-1}">Previous</a></li>   				 
	   			</c:if>
	   			<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	   				<c:if test="${currentPage==pg}">
	   					<li class="page-item"><a class="page-link" href="whale.do?${nowurl}&pageNum=${pg}" style="color:red;">${pg}</a></li>
	   				</c:if>
	   				<c:if test="${currentPage!=pg}">
	   					<li class="page-item"><a class="page-link" href="whale.do?${nowurl}&pageNum=${pg}" style="color:black;">${pg}</a></li>
	   				</c:if>
	   			</c:forEach>
	   			<c:if test="${endPage<totalPage}">
	   				<li class="page-item"><a class="page-link" href="whale.do?${nowurl}&pageNum=${endPage+1}">Next</a></li>   
	   			</c:if>
	   			</ul>

	   			
	   			
	   			  

	   		</td>
	   	</tr>
	   </table>		
   </nav>      
						
						
						
						
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Basic Tables end -->
<!-- Striped rows start -->
<%-- <div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Ethereum</h4>
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
					<p class="card-text">Use <code class="highlighter-rouge">.table-striped</code> to add zebra-striping to any table row within the <code class="highlighter-rouge">&lt;tbody&gt;</code>. This styling doesn't work in IE8 and below as <code>:nth-child</code> CSS selector isn't supported.</p>
				</div>
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr align="center">
								<th align="center">#</th>
									<th align="center">News Title</th>
									<th align="center">Time</th>

								</tr>
							</thead>
							<tbody>
							<c:forEach var="questions" begin="${startNum}" end="${endNum}" items="${list}" >
								<tr>
													<td align="center">${no}</td>	
								<c:set var="no" value="${no-1}"/>
									<td align="center"><a href="${questions.url}">${questions.title}</a></td>
									<td align="center">
				
				</td>

								</tr>
						</c:forEach>
							</tbody>
						</table>
						
									   <!-- 페이징 -->   

	   <table style="margin: 0 auto;">
	   	<tr>
	   		<td align="center">

	   			<ul class="pagination">

	   			   			<c:if test="${startPage>1}">
	   				 <li><a href="news.do?pageNum=${startPage-1}">Previous</a></li>   				 
	   			</c:if>
	   			<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	   				<c:if test="${currentPage==pg}">
	   					<li><a href="news.do?pageNum=${pg}" style="color:red;">${pg}</a></li>
	   				</c:if>
	   				<c:if test="${currentPage!=pg}">
	   					<li><a href="news.do?pageNum=${pg}" style="color:black;">${pg}</a></li>
	   				</c:if>
	   			</c:forEach>
	   			<c:if test="${endPage<totalPage}">
	   				<li><a href="news.do?pageNum=${endPage+1}">Next</a></li>   
	   			</c:if>
	   			</ul>

	   			
	   			
	   			  

	   		</td>
	   	</tr>
	   </table>		
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Striped rows end -->

<!-- Table head options start -->
<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Alts Coin</h4>
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
					<p>Similar to default and inverse tables, use one of two modifier classes <code class="highlighter-rouge">.thead-default</code> or <code class="highlighter-rouge">.thead-inverse</code> to make <code class="highlighter-rouge">&lt;thead&gt;</code>s appear light or dark gray.</p>
				</div>
				<div class="table-responsive">
					<table class="table">
						<thead class="thead-dark">
							<tr align="center">
								<th align="center">#</th>
									<th align="center">News Title</th>
									<th align="center">Time</th>

								</tr>
							</thead>
							<tbody>
							<c:forEach var="questions" begin="${startNum}" end="${endNum}" items="${list}" >
								<tr>
													<td align="center">${no}</td>	
								<c:set var="no" value="${no-1}"/>
									<td align="center"><a href="${questions.url}">${questions.title}</a></td>
									<td align="center">
				
				</td>

								</tr>
						</c:forEach>
							</tbody>
						</table>
						
									   <!-- 페이징 -->   

	   <table style="margin: 0 auto;">
	   	<tr>
	   		<td align="center">

	   			<ul class="pagination">

	   			   			<c:if test="${startPage>1}">
	   				 <li><a href="news.do?pageNum=${startPage-1}">Previous</a></li>   				 
	   			</c:if>
	   			<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	   				<c:if test="${currentPage==pg}">
	   					<li><a href="news.do?pageNum=${pg}" style="color:red;">${pg}</a></li>
	   				</c:if>
	   				<c:if test="${currentPage!=pg}">
	   					<li><a href="news.do?pageNum=${pg}" style="color:black;">${pg}</a></li>
	   				</c:if>
	   			</c:forEach>
	   			<c:if test="${endPage<totalPage}">
	   				<li><a href="news.do?pageNum=${endPage+1}">Next</a></li>   
	   			</c:if>
	   			</ul>

	   			
	   			
	   			  

	   		</td>
	   	</tr>
	   </table>		
				</div>
			</div>
		</div>
	</div>
	
</div> --%>
<!-- Table head options end -->


    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="vendor/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
    </script>
    
    
    
    

    <script src="theme-assets/vendors/js/vendors.min.js" type="text/javascript"></script>

    <script src="theme-assets/js/core/app-menu-lite.js" type="text/javascript"></script>
    <script src="theme-assets/js/core/app-lite.js" type="text/javascript"></script>




<!--     BEGIN VENDOR JS -->

    
    
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="theme-assets/vendors/js/charts/chart.min.js" type="text/javascript"></script>
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN CHAMELEON  JS-->

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