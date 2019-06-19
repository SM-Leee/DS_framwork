<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/tutorial.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/includes/tutorial_header.jsp" />
		<div id="tutorial-content-box">
			<div id="tutorial-contents-wrapper">
				<!-- 
			<div class="tutorial-contents-main">
				<h2>Duzon Standard Mobile Web Front-End Framework </h2>
				<p>모바일 웹 프론트엔드 프레임워크입니다.</p>
			</div>
			<div class="tutorial-contents-main tutorial-main-code">
			<p>script code</p>
			</div>
			<div class="tutorial-contents-main tutorial-main-pres">
			<p>고민중</p>
			 -->
				<div class="conArea main">
					﻿
					<ul class="mainList">
						<li>
							<h2>Duzon Standard Mobile Web Front-End Framework</h2>
							<p>모바일 웹 프론트엔드 프레임워크입니다.</p>
						</li>
						<li>
							<h2>Source Code</h2>
							<p>
								DS Source Code <a href="http://106.10.41.222:8080/ds_code/">DS Source</a>
							</p>
						</li>
						<li>
							<h2>고민중</h2>
							<p>고민중</p>
						</li>
					</ul>
				</div>



			</div>
		</div>
		<jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp" />

	</div>



	</div>
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>