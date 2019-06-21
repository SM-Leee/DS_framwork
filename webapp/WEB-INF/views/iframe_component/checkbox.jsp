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
<body>

	<!-- ########## 컴포넌트 넣는 곳 ########## -->
		
		<div class="ds-ui-checkbox" data-checked='true'></div>
		<div class="ds-ui-checkbox" data-location='right'></div>
		<div class="ds-ui-checkbox" data-shape='circle' data-checked='true'>
		</div>
		<div class="ds-ui-checkbox" data-disabled='true' data-checked='true'>
		</div>
		<div class="checkbox-wrapper">
			<div class="ds-ui-checkbox" data-label='false'></div>
			<div class="ds-ui-checkbox" data-shape='circle' data-checked='true'
				data-label='false'></div>
			<div class="ds-ui-checkbox" data-label='false' data-disabled='true'>
			</div>
		</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds-js.js"></script>


</body>
</html>