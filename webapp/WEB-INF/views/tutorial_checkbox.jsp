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
					<h1>체크박스</h1>
					<div class="tutorial-content-path">
						<p>&nbsp;체크 박스로 선택 사항을 여러 개 선택 할 수 있으며 버튼 모양, 버튼 선택 지정, 버튼 위치 지정, 활성화 유무, 레이블 유무를 지정 가능합니다.</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
							    <textarea class="tutorial-sourcecode xml" id="codemirror0">
<div class="ds-ui-checkbox" data-checked='true'></div>

<div class="ds-ui-checkbox" data-location='right'></div>
         
<div class="ds-ui-checkbox" data-shape='circle' data-checked='true'></div>
         
<div class="ds-ui-checkbox" data-disabled='true' data-checked='true'></div></textarea>
    
    						</div>
    						<div class="tutorial-component-description">
       							<p><span class="ds-tag-value">&nbsp;ds-ui-checkbox</span>&#9;클래스 명칭</p>
        						<p><span class="ds-tag-value">&nbsp;data-checked</span>&#9;체크 박스 선택</p>
        						<p><span class="ds-tag-value">&nbsp;data-shape</span>&#9;체크 박스 모양 (기본값 : rectangle)</p>
        						<p><span class="ds-tag-value">&nbsp;data-location</span>&#9;체크 박스 레이블 위치 (기본값 : left)</p>
        						<p><span class="ds-tag-value">&nbsp;data-disabled</span>&#9;체크 박스 활성화 선택</p>
    						</div>
							<h3>&nbsp;레이블 없는 체크 박스</h3>
    						<div class="tutorial-component-source">
        						<textarea class="tutorial-sourcecode xml" id="codemirror1">
<div class="checkbox-wrapper">
	<div class="ds-ui-checkbox" data-label='false'></div>
	<div class="ds-ui-checkbox" data-shape='circle'
		data-checked='true' data-label='false'></div>
	<div class="ds-ui-checkbox" data-label='false' data-disabled='true'></div>
</div></textarea>
    						</div>
    						<div class="tutorial-component-description">
         						<p><span class="ds-tag-value">&nbsp;data-label</span>&#9;체크 박스 레이블 유무 선택</p>
    						</div>
						</div>
						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/checkbox"></iframe>
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
	<script
		src="${pageContext.request.contextPath}/assets/js/xml.js"></script>
	<script
	src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/simplescrollbars.js"></script>
	<script type="text/javascript">
	var textarea;
	for(let i=0;i<$(".xml").length;i++){
		textarea = document.getElementById('codemirror'+i);
		var editor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			value : "function myScript(){return 100;}\n",
			mode : "xml",
			scrollbarStyle: "simple",
			readOnly: "false"   
		});
	}
	for(let i=0;i<$(".javascript").length;i++){
		textarea = document.getElementById('javascript'+i);
		var editor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			value : "function myScript(){return 100;}\n",
			mode : "javascript",
			scrollbarStyle:"simple",
			readOnly: "false"   
		});
	}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>