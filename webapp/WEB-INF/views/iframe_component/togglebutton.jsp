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
		<!-- default : off -->
		<div class='toggle'></div>
		<!-- Status : On -->
		<div class='toggle toggle--active'></div>
		<!-- modify contents -->
		<div class='toggle' data-ds-on='YES' data-ds-off='NO'></div>


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds-js.js"></script>

</body>
</html>