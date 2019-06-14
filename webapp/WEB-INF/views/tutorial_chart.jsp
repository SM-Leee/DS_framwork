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
					<h1>원형 차트</h1>
					<div class="tutorial-content-path">
						<p>Component > CircleChart</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror0'>
<div class='ds-ui-chart circle' id='circle1'
	data-ds-binding='exampleData' data-ds-standard='good'
	data-ds-calc-detail='price'></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript0">
const exampleData = [ 
		{no : 1, company : 'A', good : 'tv', count : 5,	price : 300000,	date : '2016-12-12', category : 'plus', desc : ''},
		{no : 2, company : 'A', good : 'pc', count : 10, price : 700000, date : '2017-01-12', category : 'etc', desc : ''},
		{no : 3, company : 'D', good : 'pc', count : 13, price : 700000, date : '2015-02-01', category : 'plus', desc : ''},
		{no : 4, company : 'B', good : 'smartphone', count : 3, price : 500000, date : '2018-11-02', category : 'etc', desc : ''},
		{no : 5, company : 'D', good : 'pc', count : 13, price : 400000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 6, company : 'C', good : 'tv', count : 10, price : 1800000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 7, company : 'C', good : 'radio', count : 12, price : 800000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 8, company : 'D', good : 'pc', count : 21, price : 50000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 9, company : 'C', good : 'pc', count : 4, price : 1500000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 10, company : 'A', good : 'pc', count : 3, price : 2500000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 11, company : 'A', good : 'pc', count : 10, price : 500000, date : '2019-11-01', category : 'plus', desc : ''},
		{no : 12, company : 'A', good : 'pc', count : 14, price : 400000, date : '2018-03-01', category : 'plus', desc : ''},
		{no : 13, company : 'A', good : 'pc', count : 12, price : 800000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 14, company : 'B', good : 'pc', count : 18, price : 400000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 15, company : 'B', good : 'pc', count : 11, price : 900000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 16, company : 'B', good : 'pc', count : 19, price : 200000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 17, company : 'B', good : 'pc', count : 8, price : 1100000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 18, company : 'B', good : 'pc', count : 5, price : 1300000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 19, company : 'C', good : 'pc', count : 7, price : 1500000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 20, company : 'C', good : 'pc', count : 14, price : 700000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 21, company : 'C', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 22, company : 'C', good : 'pc', count : 18, price : 400000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 23, company : 'C', good : 'pc', count : 3, price : 1900000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 24, company : 'D', good : 'pc', count : 17, price : 200000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 25, company : 'D', good : 'pc', count : 8, price : 1000000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 26, company : 'D', good : 'pc', count : 12, price : 500000, date : '2018-11-01', category : 'etc',desc : ''},
		{no : 27, company : 'D', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 28, company : 'D', good : 'pc', count : 15, price : 700000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 29, company : 'A', good : 'pc', count : 9, price : 1000000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 30, company : 'A', good : 'pc', count : 12, price : 100000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 31, company : 'A', good : 'pc', count : 10, price : 600000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 32, company : 'B', good : 'pc', count : 14, price : 400000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 33, company : 'B', good : 'pc', count : 15, price : 900000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 34, company : 'B', good : 'pc', count : 15, price : 900000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 35, company : 'C', good : 'pc', count : 12, price : 700000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 36, company : 'C', good : 'pc', count : 13, price : 300000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 37, company : 'C', good : 'pc', count : 6, price : 1700000, date : '2018-11-01', category : 'etc', desc : ''},
		{no : 38, company : 'D', good : 'pc', count : 20, price : 300000, date : '2018-11-01', category : 'plus', desc : ''},
		{no : 39, company : 'D', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'minus', desc : ''},
		{no : 40, company : 'D', good : 'pc', count : 9, price : 1500000, date : '2018-11-01', category : 'etc',desc : ''} ];</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-class">&nbsp;id</span>&#9; circle 숫자 형식 고유 id 지정</p>
								<br/>
								<p><span class="ds-tag-value">&nbsp;data-ds-binding</span>&#9;데이터 바인딩 될 JSON 객체명</p>
								<p><span class="ds-tag-value">&nbsp;data-ds-standard</span>&#9;Column별 분류 기준 선택</p>
								<p><span class="ds-tag-value">&nbsp;data-ds-calc-detail</span>&#9;상세 비교 기준 선택</p>
								<p>&#9;횟수(Count), 곱(Mul : 'mul column1 column2'), 합(Add) 형식의 비교 조건 설정 </p>

								<br/>
								<p>&#8251;<span class="ds-tag-class">&nbsp;ds-standard&nbsp;</span> 분류 후<span class="ds-tag-class">&nbsp; ds-calc-detail&nbsp;</span> 값으로 비교합니다.</p>
							</div>
							<h3>&nbsp;계산 방법</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror1'>
<div class='ds-ui-chart circle' id='circle2'
	data-ds-binding='exampleData' data-ds-standard='good'
	data-ds-calc-detail='count' data-ds-calc="avg"></div></textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;data-ds-calc</span>&#9;데이터 계산 방법 선택</p>
								<p>&nbsp; 설정값  avg / sum </p>
							</div>
							<h3>&nbsp;Column(Value) 값 변경</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror2'>
<div class='ds-ui-chart circle' id='circle3'
	data-ds-binding='exampleData' data-ds-standard='category'
	data-ds-transfer-naming='option'data-ds-calc-detail='mul price count'></div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript1">
const option = [
				{
					category : 'etc',
					transname : '미지급'
				},
				{
					category : 'plus',
					transname : '수입'
				},
				{
					category : 'minus',
					transname : '지출'
				}
			   ]</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;data-ds-transfer-naming</span>&#9;Column(Value) 값 변경 할 JSON 객체 선택</p>
							</div>
							<h3>&nbsp;범례</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror3'>
<div class='ds-ui-chart circle' id='circle4'
	data-ds-binding='exampleData' data-ds-standard='category'
	data-ds-transfer-naming='chartOption2' data-ds-calc-detail='mul price count'
	data-ds-index-position='top'></div></textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;data-ds-index-position</span>&#9;사용자 범례 위치 선택 (기본값 : bottom)</p>
								<p>&#8251; 설정값  none / bottom / top / right / left </p>
							</div>
						</div>

						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/chart"></iframe>
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
	<script type="text/javascript">
	var textarea;
	for(let i=0;i<$(".xml").length;i++){
		textarea = document.getElementById('codemirror'+i);
		var editor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			value : "function myScript(){return 100;}\n",
			mode : "xml",
			readOnly: "false"   
		});
	}
	for(let i=0;i<$(".javascript").length;i++){
		textarea = document.getElementById('javascript'+i);
		var editor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			value : "function myScript(){return 100;}\n",
			mode : "javascript",
			readOnly: "false"   
		});
	}
	
	$('#circle2').data('ds-stadard','good');
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>