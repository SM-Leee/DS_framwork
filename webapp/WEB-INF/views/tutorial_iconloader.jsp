<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico" type="image/x-icon">
<link rel="icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico" type="image/x-icon">
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/simplescrollbars.css">
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/includes/tutorial_header.jsp" />

		<div id="tutorial-content-box">
			<div id="tutorial-contents">
				<div class="tutorial-content-title">
					<h1>아이콘 로더</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;아이콘별로 기능을 가지고 있습니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;이미지 기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<div class="ds-ui-icon"></div></textarea>
							</div>

							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;ds-ui-icon</span>&#9;클래스 명칭
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-icon</span>&#9;아이콘 선택
								</p>
								<p>&#8251; 미지정시 기본 아이콘 </p>
							</div>
							<h3>&nbsp;새로고침 아이콘</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror1">
<!-- #2 -->
<div class="ds-ui-icon" data-icon='refresh'></div></textarea>
							</div>
							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;data-icon</span>&#9;새로고침 아이콘
									(기본 시간 : 0.5초)
								</p>
							</div>
							<!-- ----------------------------------------------- -->

							<h3>&nbsp;링크 아이콘</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror2">
<!-- #3 -->
<div class="ds-ui-icon" data-icon='location'
										data-location='http://m.douzone.com/'></div></textarea>
							</div>
							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;data-icon</span>&#9;링크 아이콘
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-location</span>&#9;링크 주소
									지정 (미지정시 새로고침)
								</p>
							</div>
							<!-- ----------------------------------------------- -->
							<h3>&nbsp;삭제 아이콘</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror3">
<!-- #4 -->
<div class="ds-ui-icon" data-icon='remove'></div></textarea>
							</div>
							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;data-icon</span>&#9;삭제 아이콘
								</p>
							</div>
						</div>
						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/iconloader"></iframe>
							</div>
						</div>
					</div>
				</div>

			</div>
			<jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp" />

		</div>



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