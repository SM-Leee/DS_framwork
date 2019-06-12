<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
		<jsp:include page="/WEB-INF/views/includes/tutorial_header.jsp"/>

		<div id="tutorial-content-box">
			<div id="tutorial-contents">
				<div class="tutorial-content-title">
					<h1>Chart</h1>
					<div class="tutorial-content-path">
						<p>Component > LineChart</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror0'>
<div class='ds-ui-chart line' id='line1' data-ds-binding='exampleData'
	data-ds-standard='company' data-ds-substandard='category'
	data-ds-x='date' data-ds-calc-detail='mul price count'></div></textarea>
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
								<p><span class="ds-tag-value">&nbsp;line chart의 경우에는 제목을 클릭 했을때 데이터를 변경할 수 있다.</span></p>
								<br/>
								<p><span class="ds-tag-class">&nbsp;id</span>&#9; line로 시작되는데 뒷부분은 다르게 해야됨 </p>
								<br/>
								<p><span class="ds-tag-value">&nbsp;data-ds-binding</span>&#9;데이터 바인딩 될 json 맵핑</p>
								<p><span class="ds-tag-value">&nbsp;data-ds-standard</span>&#9; 맵핑된 데이터의 분류할 기준 </p>
								<p><span class="ds-tag-value">&nbsp;data-ds-substandard</span>&#9; 분류된 기준을 한번더 분류 해준다.</p>
								<p><span class="ds-tag-value">&nbsp;data-ds-x</span>&#9;x 축에 들어가야될 데이터</p>
								<p><span class="ds-tag-value">&nbsp;data-ds-calc-detail</span>&#9;분류된 데이터를 비교할 기준</p>
								<p>&#9;하나의 데이터 말고 두개의 데이터를 곱하거나 더하여 기준을 정할 수도 있다 (예 : mul price count)</p>
								<br/>
								<p>&nbsp;예시)<span class="ds-tag-class">&nbsp;ds-standard&nbsp;</span>을 분류하여 <span class="ds-tag-class">&nbsp;ds-substandard&nbsp;</span>로 한번더 분류 해서<span class="ds-tag-class">&nbsp;ds-calc-detail&nbsp;</span>로 비교하여라</p>
							</div>
							<h3>&nbsp;단어 변경</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id='codemirror1'>
<div class='ds-ui-chart line' id='line2' data-ds-binding='exampleData'
	data-ds-standard='company' data-ds-substandard='category'
	data-ds-x='date' data-ds-calc-detail='count'
	data-ds-transfer-naming='option'></div></textarea>
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
								<p><span class="ds-tag-value">&nbsp;data-ds-transfer-naming</span>&#9;특정 단어들을 원하는데로 변경하고 싶을때 쓰인다.</p>
							</div>
						</div>
						<!-- 컴포넌트 뷰어 -->	 
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/linechart"></iframe>
							</div>
						</div>
					</div>
				</div>

			</div>
			<jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp"/>
			
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
			lineWrapping : true,
			value : "function myScript(){return 100;}\n",
			mode : "xml",
			readOnly: "false"   
		});
	}
	for(let i=0;i<$(".javascript").length;i++){
		textarea = document.getElementById('javascript'+i);
		var editor = CodeMirror.fromTextArea(textarea, {
			lineNumbers : true,
			lineWrapping : true,
			value : "function myScript(){return 100;}\n",
			mode : "javascript",
			readOnly: "false"   
		});
	}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>