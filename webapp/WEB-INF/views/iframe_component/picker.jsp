<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/ds-header-link.js"></script>
</head>
<body class="body">

	<!-- ########## 컴포넌트 넣는 곳 ########## -->
	<div class="App">
		<select class="ds-ui-dropdown-picker">
			<option value="volvo">Volvo</option>
			<option value="assb">Saab</option>
			<option value="opel">Opel</option>
			<option value="audi">Audi</option>
		</select> <select class="ds-ui-dropdown-picker" data-ds-label="목 차">
			<option value="volvo">Volvo</option>
			<option value="assb">Saab</option>
			<option value="opel">Opel</option>
			<option value="audi">Audi</option>
		</select> <select class="ds-ui-dropdown-picker" data-ds-rows="2">
			<option value="volvo">Volvo</option>
			<option value="assb">Saab</option>
			<option value="opel">Opel</option>
			<option value="audi">Audi</option>
		</select> <select class="ds-ui-dropdown-picker" data-ds-label="목 차"
			data-ds-rows="2">
			<option value="volvo">Volvo</option>
			<option value="assb">Saab</option>
			<option value="opel">Opel</option>
			<option value="audi">Audi</option>
		</select> <select class="ds-ui-dropdown-picker" data-ds-label="목 차"
		data-ds-binding="exampleData" data-ds-item-binding="option2"
		data-ds-value-field="category" data-ds-text-field="transname"></select>
	</div>

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/app.js"></script>
	<script>
	const exampleData = [ {
		no : 1,
		company : '더존비즈온',
		good : 'tv',
		count : 5,
		price : 300000,
		date : '2017-12-12',
		category : 'plus',
		desc : '안녕하세요? 최기석입니다 반갑습니다 하이하이'
	}
	];
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