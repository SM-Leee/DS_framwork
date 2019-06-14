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
		<div class='ds-ui-cardlistAllBox' data-ds-mapping='exampleData'
			data-ds-category='category' data-setting='true'
			data-icon='status modify remove'>
			<div data-ds-detail='date'></div>
			<div data-ds-detail='company'></div>
			<div data-ds-detail='price'></div>
		</div>

	</div>

	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/app.js"></script>
	<script>
		const exampleData = [
				{
					no : 1,
					company : 'A',
					good : 'tv',
					count : 5,
					price : 300000,
					date : '2017-12-12',
					category : 'etc',
					desc : '안녕하세요? 최기석입니다 반갑습니다 하이하이',
					img : 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'
				},
				{
					no : 2,
					company : 'A',
					good : 'pc',
					count : 10,
					price : 700000,
					date : '2018-10-19',
					category : 'plus',
					desc : '',
					img : 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'
				},
				{
					no : 3,
					company : 'D',
					good : 'pc',
					count : 13,
					price : 700000,
					date : '2018-11-01',
					category : 'minus',
					desc : '',
					img : 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'
				}];
		const color_option = [ {
			category : 'etc',
			color : 'red'
		}, {
			category : 'plus',
			color : 'blue'
		}, {
			category : 'minus',
			color : 'green'
		} ];
		const statusViewOption = [ {
			img : '이미지',
			col : 'header'
		}, {
			good : '상품',
			col : 2
		}, {
			company : '회사',
			col : 2
		}, {
			count : '개수',
			col : 2
		}, {
			price : '가격',
			col : 2
		}, {
			date : '일자',
			col : 2
		}, {
			category : '분류',
			col : 2
		}, {
			desc : '설명',
			col : 1
		} ]
	</script>

</body>
</html>