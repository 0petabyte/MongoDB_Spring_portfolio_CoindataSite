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



<!--   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
 -->
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
 -->


<!--     Bootstrap Core CSS -->
<!--     <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<meta charset="EUC-KR">
<title>Insert title here</title>

    DataTables CSS
    <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    DataTables Responsive CSS
    <link href="vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet"> -->

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
var img = document.getElementsByTagName("img");
vat i=0;
while (i < img.length) {
  img[i].setAttribute("style", "max-width: 100%; height: auto;");
  i++;
}

</script>
<style>


img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}

@media only screen and (min-width: 450px) {
  #background {	
	  background: url(img/small.jpg) no-repeat;
  }    
} 

@media only screen and (min-width: 780px) and (max-width: 1024px) {
  #background {	
	  background: url(img/mid.jpg) no-repeat;
  }    
} 
	


div.entry-content{
    max-width: 100%; /* 이미지의 최대사이즈 */
    width /***/: auto; /* IE8 */
    height: auto;
    vertical-align: bottom;
}

















#img {
    max-width: 100%; /* 이미지의 최대사이즈 */
    width /***/: auto; /* IE8 */
    height: auto;
    vertical-align: bottom;
}


 
.img {
    max-width: 100%; /* 이미지의 최대사이즈 */
    width /***/: auto; /* IE8 */
    height: auto;
    vertical-align: bottom;
}

img {
    max-width: 100%; /* 이미지의 최대사이즈 */
    width /***/: auto; /* IE8 */
    height: auto;
    vertical-align: bottom;
}

</style>

</head>


<body>



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
<%-- 		<div class="container">
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
				
				<form name="search" method="get" action="koreanewstotal.do"
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
    <option value="koreanews.do" class="form-control">오늘뉴스</option>
    <option selected value="koreanewstotal.do" class="form-control">전체뉴스</option>
</select></td>
						
						
												<td><select class="form-control" id="keyField"
							name="keyField">
								<option value="title">제목</option>
								
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
						<td>
						            			  <div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'ko', layout: google.translate.TranslateElement.InlineLayout.SIMPLE,autoDisplay: false}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
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
								<b> 국내뉴스의 경우 저작권문제상 링크와 제목만 표시됩니다.</b><br>
				<b>   총 <span style="color:red;">${count}</span>개의 뉴스가 있습니다.</b>
				
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
									<th align="center">News Title</th>
									<th align="center">Time</th>
									<th align="center">NewsSite</th>
									

								</tr>
							</thead>
							<tbody>
							<c:forEach var="news_korea" begin="${startNum}" end="${endNum}" items="${list}" >
								
													<td align="center">${no}</td>	
								<c:set var="no" value="${no-1}"/>
									<td align="center">
									${news_korea.title}</td>
									<td align="center">${news_korea.newtime}</td>
									<td align="center"><a href="${news_korea.newsurl}" target="_blank"><i class="la la-internet-explorer"></i>Link</a></td>
									
				

								</tr>

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
	   				 <li class="page-item" ><a class="page-link" href="koreanewstotal.do?${nowurl}&pageNum=${startPage-1}">Previous</a></li>   				 
	   			</c:if>
	   			<c:forEach var="pg" begin="${startPage}" end="${endPage}">
	   				<c:if test="${currentPage==pg}">
	   					<li class="page-item"><a class="page-link" href="koreanewstotal.do?${nowurl}&pageNum=${pg}" style="color:red;">${pg}</a></li>
	   				</c:if>
	   				<c:if test="${currentPage!=pg}">
	   					<li class="page-item"><a class="page-link" href="koreanewstotal.do?${nowurl}&pageNum=${pg}" style="color:black;">${pg}</a></li>
	   				</c:if>
	   			</c:forEach>
	   			<c:if test="${endPage<totalPage}">
	   				<li class="page-item"><a class="page-link" href="koreanewstotal.do?${nowurl}&pageNum=${endPage+1}">Next</a></li>   
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








</body>
</html>