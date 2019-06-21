<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="${pageContext.request.contextPath}/assets/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/tutorial.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/codemirror.css">
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/includes/tutorial_header.jsp" />
		<div id="tutorial-content-box">
			<div id="tutorial-contents-wrapper">
				
				<div class="conArea main">
					﻿
					<ul class="mainList">
						<li>
							<h2>Duzon Standard Mobile Web Front-End Framework</h2>
							<p>모바일 웹 프론트엔드 프레임워크입니다.</p>
						</li>
						<li>
							<h2>
								<i class="fas fa-cog"></i>&nbsp;Start Source
							</h2>
							
							<div class="tutorial-source">
								<h3>CSS</h3>
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<script type="text/javascript" src="http://106.10.41.222:8080/ds_code/js/ds-css.js"></script></textarea>
							</div>
							<div class="tutorial-source">
								<h3>JS</h3>
								<textarea class="tutorial-sourcecode xml" id="codemirror1">
<script type="text/javascript" src="http://106.10.41.222:8080/ds_code/js/ds-js.js"></script></textarea>
							</div>
						</li>
						<li>
							<h2>
								<i class="fas fa-file-download"></i>&nbsp;Download Site
							</h2>
							<p>
								DS 프로젝트 소스코드 다운로드 <a href="http://106.10.41.222:8080/ds_code/">Download
									Site</a>
							</p>
						</li>


					</ul>
				</div>



			</div>
		</div>
		<jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp" />

	</div>
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/codemirror.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/xml.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
		<script
		src="${pageContext.request.contextPath}/assets/js/simplescrollbars.js"></script>
	<script type="text/javascript">
		var textarea;
		for (let i = 0; i < $(".xml").length; i++) {
			textarea = document.getElementById('codemirror' + i);
			var editor = CodeMirror.fromTextArea(textarea, {
				lineNumbers : true,
				value : "function myScript(){return 100;}\n",
				mode : "xml",
				scrollbarStyle:"simple",
				readOnly : "false"
			});
		}
		for (let i = 0; i < $(".javascript").length; i++) {
			textarea = document.getElementById('javascript' + i);
			var editor = CodeMirror.fromTextArea(textarea, {
				lineNumbers : true,
				value : "function myScript(){return 100;}\n",
				mode : "javascript",
				scrollbarStyle:"simple",
				readOnly : "false"
			});
		}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>