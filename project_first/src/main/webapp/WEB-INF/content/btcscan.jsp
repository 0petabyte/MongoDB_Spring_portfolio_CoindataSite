<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.*, java.text.*"%>

<html>
<head>
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-128305810-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-128305810-1');
</script>
<c:set var="root" value="<%=request.getContextPath()%>" />
<script type="text/javascript" src="dist/js/bootstrap-multiselect.js"></script>
<link rel="stylesheet" href="${root}/dist/css/bootstrap-multiselect.css"
	type="text/css">
<title>Bootstrap Example</title>

<meta charset="utf-8">
<!-- 
  <meta name="viewport" content="width=device-width, initial-scale=1"> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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




<style type="text/css">
.ellip {
	width: 3px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
</style>



</head>


<body>














	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<!-- <h5 class="card-title">CoinNews</h5> -->

<!-- 					<form name="search" method="get" action="social.do"
						onsubmit="return check()">
						<table>
							<tr>
								<td>
															<select class="form-control" id="whatday"
							name="whatday">
								<option value="">NEWS기간</option>
							    <option value="todaynews">오늘NEWS</option>
								<option value="totalnews">전체NEWS</option>
								
								
						</select> <select class="form-control"
									onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
										<option value="" selected disabled hidden>Choose here</option>
										<option selected value="news.do" class="form-control">당일데이터</option>
										<option value="totalnews.do" class="form-control">전체데이터</option>
								</select>
								</td>

								</td>
								<td><select class="form-control" id="keyField"
									name="keyField">
										<option value="title">제목</option>
										<option value="content">내용</option>
										<option value="newtime">날짜</option>
								</select></td>


								<td width=350px;><input type="hidden" name="search_param"
									value="all" id="search_param"> <input type="text"
									style="weight: 100%; height: 41px;" class="form-control"
									name="keyWord" placeholder="검색어를 입력해주세요.EX)btc,eth,xrp.."
									onkeyup="enterkey()"></td>
								<td>

									<button type="button" style="weight: 100px; height: 41px;"
										onclick="searchbutton_click()"
										class="btn btn-outline-secondary">검색하기</button>
								</td>


							</tr>
						</table>
					</form> -->

					<a class="heading-elements-toggle"><i
						class="la la-ellipsis-v font-medium-3"></i></a>
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
						<p class="card-text">
							<c:if test="${count==0}">
								<b>저장된 데이터가 없습니다.</b>
							</c:if>
							<c:if test="${count>0}">
								<!-- 게시글의 갯수가 red 색상 -->

								<b> 500개이상 BTC 이동 만 기록합니다. 금일은 총 <span style="color: red;">${count}</span>건
									의 이동이 있습니다<br> 문의 사항 : 
									0petabyte@gmail.com<br></b>
				텔레그램 Bot <a href=https://t.me/coindata1 target=_blank>https://t.me/coindata1</a>
		</c:if>
						<p>
							<span class="text-bold-600">NoW Time:</span>
							<%
								java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
								String today = formatter.format(new java.util.Date());

								out.println(today);
							%>
						</p>
						<div class="table-responsive">
							<table class="table table-hover" id="dataTables-example">
								<thead>
									<tr align="center">
										<th align="center">#</th>
										
										<th align="center" width="10%">유형</th>
										<th align="center" width="10%">Txid</th>
										<th align="center" width="10%">보낸이</th>
										<th align="center" width="10%">랭크</th>
										<th align="center" width="10%">보유수량</th>
										<th align="center" width="10%">받는이</th>
										<th align="center" width="10%">랭크</th>
										<th align="center" width="10%">보유수량</th>
										<th align="center" width="10%">전송수량</th>
										<th align="center" width="10%">시간</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="btc_topsend" begin="${startNum}" end="${endNum}"
										items="${list}">
										<tr>
											<td class="testline" align="center">${no}</td>
											<c:set var="no" value="${no-1}" />

											<td class="ellip">${btc_topsend.content.substring(0,5)}</td>
																						<td><a href=https://www.blockchain.com/ko/btc/tx/${btc_topsend.title}
												target=_blank> <c:choose>
														<c:when test="${fn:length(btc_topsend.title) > 14}">
															<c:out value="${fn:substring(btc_topsend.title,0,13)}" />....
					           </c:when>
														<c:otherwise>
															<c:out value="${btc_topsend.title}" />
														</c:otherwise>
													</c:choose>
											</a></td>
											
											<td class="ellip">${btc_topsend.toname}</td>
											<td class="ellip">${btc_topsend.torank}</td>
											<td class="ellip">${btc_topsend.towallet}</td>
											<td class="ellip">${btc_topsend.fromname}</td>
											<td class="ellip">${btc_topsend.fromrank}</td>
											<td class="ellip">${btc_topsend.fromwallet}</td>
											<td class="ellip">${btc_topsend.sendcnt}</td>
											<td class="ellip">${btc_topsend.actime}</td>
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
													<li class="page-item"><a class="page-link"
														href="btcscan.do?${nowurl}&pageNum=${startPage-1}">Previous</a></li>
												</c:if>
												<c:forEach var="pg" begin="${startPage}" end="${endPage}">
													<c:if test="${currentPage==pg}">
														<li class="page-item"><a class="page-link"
															href="btcscan.do?${nowurl}&pageNum=${pg}"
															style="color: red;">${pg}</a></li>
													</c:if>
													<c:if test="${currentPage!=pg}">
														<li class="page-item"><a class="page-link"
															href="btcscan.do?${nowurl}&pageNum=${pg}"
															style="color: black;">${pg}</a></li>
													</c:if>
												</c:forEach>
												<c:if test="${endPage<totalPage}">
													<li class="page-item"><a class="page-link"
														href="btcscan.do?${nowurl}&pageNum=${endPage+1}">Next</a></li>
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
				responsive : true
			});
		});
	</script>


	<script src="theme-assets/vendors/js/vendors.min.js"
		type="text/javascript"></script>

	<script src="theme-assets/js/core/app-menu-lite.js"
		type="text/javascript"></script>
	<script src="theme-assets/js/core/app-lite.js" type="text/javascript"></script>

</body>
</html>