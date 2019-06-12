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
					<h1>DataTable</h1>
					<div class="tutorial-content-path">
						<p>Component > DataTable</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
						<h3>&nbsp;기본</h3>
						<div class="tutorial-component-source">
    						<textarea class="tutorial-sourcecode xml" id="codemirror0">
<!-- default datePicker -->
<div id="data-table" class="data-table" data-ui-height="70%"
	data-ds-binding="exampleData" data-ds-column-header="company"
	data-ds-customizing="customize_Naming"></div></textarea>
						</div>
						<div class="tutorial-component-source">
    						<textarea class="tutorial-sourcecode javascript" id="javascript0">
const customize_Naming = 
		{ company : "회사명", good : "상품", count : "판매수량", price : "판매가", date : "판매일", category : "카테고리명", desc : "내역" };

const exampleData = 
        [ 
 			{no : 1, company : 'A', good : 'tv', count : 5,   price : 300000,   date : '2017-12-01', category : 'plus', desc : ''},
			{no : 2, company : 'A', good : 'pc', count : 10, price : 700000, date : '2018-12-02', category : 'etc', desc : 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/ReceiptSwiss.jpg/200px-ReceiptSwiss.jpg'},
			{no : 3, company : 'D', good : 'pc', count : 13, price : 700000, date : '2018-12-03', category : 'plus', desc : 'https://www.cmu.edu/blackboard/files/evaluate/tests-example.xls'},
			{no : 4, company : 'B', good : 'smartphone', count : 3, price : 500000, date : '2018-12-04', category : 'etc', desc : ''},
			{no : 5, company : 'D', good : 'pc', count : 13, price : 400000, date : '2018-12-05', category : 'minus', desc : '' },
			{no : 6, company : 'C', good : 'tv', count : 10, price : 1800000, date : '2018-12-06', category : 'minus', desc : '' },
			{no : 7, company : 'C', good : 'radio', count : 12, price : 800000, date : '2018-12-07', category : 'etc', desc : '' },
			{no : 8, company : 'D', good : 'pc', count : 21, price : 50000, date : '2018-12-08', category : 'plus', desc : '' }, 
			{no : 9, company : 'C', good : 'pc', count : 4, price : 1500000, date : '2018-12-09', category : 'plus', desc : '' }, 
			{no : 10, company : 'A', good : 'pc', count : 3, price : 2500000, date : '2018-12-10', category : 'etc', desc : '' }, 
			{no : 11, company : 'A', good : 'pc', count : 10, price : 500000, date : '2018-12-11', category : 'etc', desc : '' }, 
			{no : 12, company : 'A', good : 'pc', count : 14, price : 400000, date : '2018-11-01', category : 'minus', desc : '' }, 
			{no : 13, company : 'A', good : 'pc', count : 12, price : 800000, date : '2018-11-01', category : 'minus', desc : '' }, 
			{no : 14, company : 'B', good : 'pc', count : 18, price : 400000, date : '2018-11-01', category : 'plus', desc : '' }, 
			{no : 15, company : 'B', good : 'pc', count : 11, price : 900000, date : '2018-11-01', category : 'plus', desc : '' },
			{no : 16, company : 'B', good : 'pc', count : 19, price : 200000, date : '2018-11-01', category : 'etc', desc : '' },
			{no : 17, company : 'B', good : 'pc', count : 8, price : 1100000, date : '2018-11-01', category : 'minus', desc : '' },
  			{no : 18, company : 'B', good : 'pc', count : 5, price : 1300000, date : '2018-11-01', category : 'minus', desc : '' },
			{no : 19, company : 'C', good : 'pc', count : 7, price : 1500000, date : '2018-11-01', category : 'plus', desc : '' },
    		{no : 20, company : 'C', good : 'pc', count : 14, price : 700000, date : '2018-11-01', category : 'plus', desc : '' },
			{no : 21, company : 'C', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'etc', desc : '' },
      		{no : 22, company : 'C', good : 'pc', count : 18, price : 400000, date : '2018-11-01', category : 'minus', desc : '' },
   			{no : 23, company : 'C', good : 'pc', count : 3, price : 1900000, date : '2018-11-01', category : 'plus', desc : '' }, 
			{no : 24, company : 'D', good : 'pc', count : 17, price : 200000, date : '2018-11-01', category : 'plus', desc : '' }, 
			{no : 25, company : 'D', good : 'pc', count : 8, price : 1000000, date : '2018-11-01', category : 'etc', desc : '' }, 
   			{no : 26, company : 'D', good : 'pc', count : 12, price : 500000, date : '2018-11-01', category : 'etc', desc : '' }, 
			{no : 27, company : 'D', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'etc', desc : '' }, 
			{no : 28, company : 'D', good : 'pc', count : 15, price : 700000, date : '2018-11-01', category : 'minus', desc : '' }, 
            {no : 29, company : 'A', good : 'pc', count : 9, price : 1000000, date : '2018-11-01', category : 'minus', desc : '' }, 
            {no : 30, company : 'A', good : 'pc', count : 12, price : 100000, date : '2018-11-01', category : 'plus', desc : '' }, 
			{no : 31, company : 'A', good : 'pc', count : 10, price : 600000, date : '2018-11-01', category : 'etc', desc : '' }, 
			{no : 32, company : 'B', good : 'pc', count : 14, price : 400000, date : '2018-11-01', category : 'plus', desc : '' }, 
			{no : 33, company : 'B', good : 'pc', count : 15, price : 900000, date : '2018-11-01', category : 'etc', desc : '' }, 
			{no : 34, company : 'B', good : 'pc', count : 15, price : 900000, date : '2018-11-01', category : 'etc', desc : '' }, 
			{no : 35, company : 'C', good : 'pc', count : 12, price : 700000, date : '2018-11-01', category : 'plus', desc : '' }, 
			{no : 36, company : 'C', good : 'pc', count : 13, price : 300000, date : '2018-11-01', category : 'minus', desc : '' }, 
			{no : 37, company : 'C', good : 'pc', count : 6, price : 1700000, date : '2018-11-01', category : 'etc', desc : '' }, 
			{no : 38, company : 'D', good : 'pc', count : 20, price : 300000, date : '2018-11-01', category : 'plus', desc : '' }, 
			{no : 39, company : 'D', good : 'pc', count : 13, price : 500000, date : '2018-11-01', category : 'minus', desc : '' }, 
			{no : 40, company : 'D', good : 'pc', count : 9, price : 1500000, date : '2018-11-01', category : 'etc', desc : '' }
		];
    						
    						</textarea>
    					</div>

							<div class="tutorial-component-description">
 								<p><span class="ds-tag-value">&nbsp;data-table</span>&#9;아이디 및 클래스 이름 명칭</p>
 								<p><span class="ds-tag-value">&nbsp;data-ui-height</span>&#9;테이블 크기를 지정하고 싶을 때 default: 70%</p>
    							<p><span class="ds-tag-value">&nbsp;data-ds-binding</span>&#9;데이터 바인딩 될 json 맵핑</p>
							    <p><span class="ds-tag-value">&nbsp;data-ds-column-header</span>&#9;데이터 바인딩 된 json 에서 고정위치로 사용될 column 맵핑</p>
							    <p><span class="ds-tag-value">&nbsp;data-ds-customizing</span>&#9;데이터 바인딩 된 json 에서 컬럼들의 이름을 변경하고 싶을 때 사용하는 옵션</p>
							</div>
						</div>

						<!-- 컴포넌트 뷰어 -->	 
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/datatable"></iframe>
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