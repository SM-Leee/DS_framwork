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
	<div class="contents">
		<!-- ########## 컴포넌트 넣는 곳 ########## -->
		<select class="ds-ui-dropdown-picker">
			<option value="volvo">Select1</option>
			<option value="assb">Select2</option>
			<option value="opel">Select3</option>
			<option value="audi">Select4</option>
		</select> <select class="ds-ui-dropdown-picker" data-ds-label="목 차">
			<option value="volvo">Select1</option>
			<option value="assb">Select2</option>
			<option value="opel">Select3</option>
			<option value="audi">Select4</option>
		</select> <select class="ds-ui-dropdown-picker" data-ds-rows="2">
			<option value="volvo">Select1</option>
			<option value="assb">Select2</option>
			<option value="opel">Select3</option>
			<option value="audi">Select4</option>
		</select> <select class="ds-ui-dropdown-picker" data-ds-label="목 차"
			data-ds-rows="2">
			<option value="volvo">Select1</option>
			<option value="assb">Select2</option>
			<option value="opel">Select3</option>
			<option value="audi">Select4</option>
		</select> <select class="ds-ui-dropdown-picker" data-ds-label="목 차"
			data-ds-item-binding="option2" data-ds-value-field="category"
			data-ds-text-field="transname"></select>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds-js.js"></script>
	<script>
		const option2 = [ {
			category : 'etc',
			transname : '미지급'
		}, {
			category : 'plus',
			transname : '수입'
		}, {
			category : 'minus',
			transname : '지출'
		} ];
	</script>

</body>
</html>