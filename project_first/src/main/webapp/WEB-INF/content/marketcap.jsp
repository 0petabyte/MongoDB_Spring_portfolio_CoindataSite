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
<c:set var="root" value="<%=request.getContextPath()%>" />
<script type="text/javascript" src="dist/js/bootstrap-multiselect.js"></script>
<link rel="stylesheet" href="${root}/dist/css/bootstrap-multiselect.css" type="text/css">
  <title>Bootstrap Example</title>

  <meta charset="utf-8">
<!-- 
  <meta name="viewport" content="width=device-width, initial-scale=1"> -->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
  var coinsimbol = new Array();
  var coinprice = new Array();
  var coinname2 = new Array();
  var coinunder = new Array();

	
  
	<c:forEach items="${list4}" var="marketcap" begin="0" end="100">
    
	coinname.push('${marketcap.title}'+' '+'${marketcap.simbol}'+'  '+'${marketcap.price}');
	coincnt.push('${marketcap.changeint}');
	coinsimbol.push('${marketcap.simbol}');

    
    
    </c:forEach>
    
	<c:forEach items="${list5}" var="marketcap" begin="0" end="100">
    
	coinname2.push('${marketcap.title}'+' '+'${marketcap.simbol}'+'  '+'${marketcap.price}');
	coinunder.push('${marketcap.changeint}');


    
    
    </c:forEach>
    
  

    
  
  var chartbarData = {
	        labels: coinname,
	        datasets: [{
	            label: "상승률 % ",
	            data: coincnt,
	            backgroundColor: '#28D094',
	           
	            borderColor: "transparent"
	        }]
	    };
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

<script>
// Chart Data

  var coinname = new Array();
  var coincnt = new Array();

	
  
	<c:forEach items="${list6}" var="marketcap" begin="0" end="10">
    
	coinname.push('${marketcap.simbol}'+'${marketcap.volume}');
	coincnt.push('${marketcap.volumeint}');

    
    
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

	
  
	<c:forEach items="${list7}" var="marketcap" begin="0" end="10">
    
	like.push('${marketcap.simbol}');
	likecnt.push('${marketcap.capint}');

    
    
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
   <script type="text/javascript">
  
  
  
  var hourdata = new Array();
  var volumedata = new Array();



  
    
    
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
                    매 시 업데이트됩니다. 상위100개만 그래프에 출력됩니다.</h4>
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
                            <div class="height-800">
                        <canvas id="bar-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- // Bar charts section end -->





<!-- Bar charts section start -->
<section id="chartjs-bar-charts">

    
    <!-- Bar Chart -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Coin index <br>
                    매 시 업데이트됩니다. 하위100개만 그래프에 출력됩니다.</h4>
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
                            <div class="height-800">
                        <canvas id="bar-chart2"></canvas>
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
                    <h4 class="card-title">Volume 현황<br>
                    (업데이트 주기 : 1H)</h4>
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
                    <h4 class="card-title">시총 현황<br>
                   (업데이트 주기 :1H)</h4>
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



<%-- <div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<!-- <h5 class="card-title">CoinNews</h5> -->
				
				<form name="search" method="get" action="social.do"
				onsubmit="return check()">
				<table><tr>
						<td>
						
<!-- 						<select class="form-control" id="whatday"
							name="whatday">
								<option value="">NEWS기간</option>
							    <option value="todaynews">오늘NEWS</option>
								<option value="totalnews">전체NEWS</option>
								
								
						</select> -->
		
	<select class="form-control"onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
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
						</select></td>
												
						
						<td width=350px;><input type="hidden" name="search_param" value="all"
							id="search_param"> <input type="text"
							style="weight: 100%; height:41px;" class="form-control" name="keyWord"
							placeholder="검색어를 입력해주세요.EX)btc,eth,xrp.." onkeyup="enterkey()">
							</td>
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
								
				<b>   오늘은 <span style="color:red;">${count}</span>개의 게시글이 있습니다.<br>
				각종 커뮤니티에 올라올 글들을 조회 할 수 있습니다.<br>
				해당기능은 FUD의 원인이 되는 글들을 유입해 볼 수 있습니다.</b>
				
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
									<th align="center">reply Title</th>
									<th align="center">Time</th>

									

								</tr>
							</thead>
							<tbody>
							<c:forEach var="reply" begin="${startNum}" end="${endNum}" items="${list}" >
								<tr>
													<td class="testline" align="center">${no}</td>	
								<c:set var="no" value="${no-1}"/>
									<td >
									<a href=${reply.url} >${reply.title}</a></td>
									<td >${reply.newstime}</td>


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
	   				 <li class="page-item" ><a class="page-link" href="social.do?${nowurl}&pageNum=${startPage-1}">Previous</a></li>   				 
	   			</c:if>
	   			<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	   				<c:if test="${currentPage==pg}">
	   					<li class="page-item"><a class="page-link" href="social.do?${nowurl}&pageNum=${pg}" style="color:red;">${pg}</a></li>
	   				</c:if>
	   				<c:if test="${currentPage!=pg}">
	   					<li class="page-item"><a class="page-link" href="social.do?${nowurl}&pageNum=${pg}" style="color:black;">${pg}</a></li>
	   				</c:if>
	   			</c:forEach>
	   			<c:if test="${endPage<totalPage}">
	   				<li class="page-item"><a class="page-link" href="social.do?${nowurl}&pageNum=${endPage+1}">Next</a></li>   
	   			</c:if>
	   			</ul>

	   			
	   			
	   			  

	   		</td>
	   	</tr>
	   </table>		
   </nav>      
				 --%>		
						
						
						
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

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