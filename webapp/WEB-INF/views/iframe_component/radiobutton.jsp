<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/ds-css.js"></script>
</head>
<body class="body">

	<!-- ########## 컴포넌트 넣는 곳 ########## -->
	<div class="App">
		<div class="ds-ui-radiobutton" data-checked='true' data-name='radio1'>
		</div>
		<div class="ds-ui-radiobutton" data-location='right'
			data-checked='true' data-name='radio1'></div>
		<div class="ds-ui-radiobutton" data-name='radio1' data-disabled='true'>
		</div>




		<div class="radiobutton-wrapper">
			<div class="ds-ui-radiobutton" data-name='radio2' data-label='false'
				data-checked="true"></div>
			<div class="ds-ui-radiobutton" data-name='radio2' data-label='false'>
			</div>
			<div class="ds-ui-radiobutton" data-name='radio2' data-label='false'
				data-disabled="true"></div>
		</div>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds-js.js"></script>

</body>
</html>