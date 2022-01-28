<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>페데리꼬 피자</title>
<link href="/federico/resources/css/styles.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<script src="/federico/resources/myLib/jquery-3.2.1.min.js"></script>
<script src="/federico/resources/myLib/inCheck.js"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
<style>
.checked {
	border-bottom: 2px solid black;
	color: black;
}

.checked .a {
	font-size: large;
	color: gray;
}

.my.pagination > .active > a, 
.my.pagination > .active > span, 
.my.pagination > .active > a:hover, 
.my.pagination > .active > span:hover, 
.my.pagination > .active > a:focus, 
.my.pagination > .active > span:focus {
  background: crimson;
  border-color: crimson;
}



</style>
<script>
	//Search 이벤트 -> makequery 메서드 사용하기위해 jsp파일에 배치
	$(
			function() {
				// SearchType 이 '---' 면 keyword 클리어
				$('#searchType').change(function() {
					$('#keyword').val('');
				}); //change
				// 검색후 요청
				$('#searchBtn').on( "click", function() {
							self.location = "cscenterf"
									+ "${pageMaker.makeQuery(1)}"
									+ "&searchType=" + $('#searchType').val()
									+ '&keyword=' + $('#keyword').val()
						}); //on_click 

			}) //ready
</script>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<body>


	<!-- Navigation-->
	<%@include file="nav.jsp"%>
	<!-- 본문 시작 -->
	<section class="container py-5"
		style="height: auto; min-height: 100%; padding-bottom: 168px;">
		<div class="container-fluid">
			<div class="row mb-5">
				<div class="col-md-3"></div>
				<div class="col-md-6" align="center">
					<h1 class="display-6">고객센터</h1>
				</div>
				<div class="col-md-3"></div>
			</div>
			<!-- 컨텐츠 -->
			<div id="content">
				<!-- 공지사항 -->
				<div id="csNoticeBoard" class="container" style="display: block;">
					<div class="row justify-content-md-center mt-5 py-5">
					
						<div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">
							<div class="dataTable-container" style="border-top: 1px solid black;">
								<table id="table_id" class="table table-striped table-hover">
									<thead>
										<tr>
											<th scope="col" style="width: 500px;">제목</th>
											<th scope="col" style="width: 200px;">날짜</th>
											<th scope="col" style="width: 100px;">조회수</th>
										</tr>
									</thead>
									<tbody>
											<tr>
												<td colspan="3">글 내용</td>
											</tr>
									</tbody>
								</table>
							</div>
							<div class="dataTable-bottom">
								<div class="row">
									<div class="col-6" align="left">
										<button class="btn btn-outline-danger">목록</button>
									</div>
									<div class="col-6" align="right">
										<button class="btn btn-outline-danger">이전글</button>
										<button class="btn btn-outline-danger">다음글</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
					</div>
				</div>

				<!-- 고객의 소리 -->
				<div id="csCompForm" class="container" style="display: none;">
					<div class="row justify-content-md-center">
					고객의 소리입니다.
					</div>
				</div>
	</section>
	<!-- footer inlcud -->
	<%-- <%@ include file="footer.jsp"%> --%>




	
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/federico/resources/js/scripts.js"></script>
	<script src="/federico/resources/myLib/client_Script.js"></script>
</body>
</html>