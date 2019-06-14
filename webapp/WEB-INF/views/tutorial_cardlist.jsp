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
					<h1>카드리스트</h1>
					<div class="tutorial-content-path">
						<p>Component > CardList</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<!-- #1 -->
<div class='ds-ui-cardlistAllBox' data-ds-mapping='exampleData'
	data-ds-category='company'>
	<div data-ds-detail='date'></div>
	<div data-ds-detail='company'></div>
	<div data-ds-detail='price'></div>
</div></textarea>
							</div>
							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;ds-ui-cardlistAllBox</span>&#9;클래스
									명칭
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-ds-mapping</span>&#9;데이터 매핑 될
									JSON 객체명
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-ds-category</span>&#9;색 지정
									비교 Column 선택
								</p>
								<p>
									<span class="ds-tag-value">&nbsp;data-ds-detail</span>&#9;매핑 될 Column 명 지정
								</p>
								<p>&#8251; 설정 개수는 1~3개 가능합니다.</p>
							</div>

							<!-- ----------------------------------------------- -->
							<h3>&nbsp;카드리스트 설정 기능</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror1">
        <!-- #2 -->
<div class='ds-ui-cardlistAllBox' data-ds-mapping='exampleData'
	data-ds-category='company' data-setting='true'
	data-icon='status modify remove'>
        <div data-ds-detail='date'></div>
        <div data-ds-detail='company'></div>
        <div data-ds-detail='price'></div>
</div></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript0">
const exampleData = [{
                no: 1,
                company: 'A',
                good: 'tv',
                count: 5,
                price: 100000,
                date: '2019-03-12',
                category: 'plus',
                desc: 'A회사 수입',
            },
            {
                no: 2,
                company: 'B',
                good: 'pc',
                count: 10,
                price: 700000,
                date: '2016-04-19',
                category: 'etc',
                desc: 'B 회사 미지급',
            },
            {
                no: 3,
                company: 'C',
                good: 'pc',
                count: 13,
                price: 20000,
                date: '2017-05-12',
                category: 'plus',
                desc: 'C 회사 수입'
            },
            {
                no: 4,
                company: 'D',
                good: 'smartphonhone',
                count: 3,
                price: 500000,
                date: '2018-12-02',
                category: 'etc',
                desc: 'D 회사 지출'
            }
        ]


             const color_option = [{
                category: 'A',
                color: 'orange'
            },
            {
                category: 'B',
                color: 'skyblue'
            },
            {
                category: 'C',
                color: 'green'
            },
            {
                category: 'D',
                color: 'green'
            }
        ];								
								</textarea>
							</div>
							<div class="tutorial-component-description">
								<p>
									<span class="ds-tag-value">&nbsp;data-setting</span>&#9;카드리스트
									상세보기, 수정, 삭제 기능 추가
								</p>
							</div>

						</div>

						<!-- 컴포넌트 뷰어 -->
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/cardlist"></iframe>
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
	<script src="${pageContext.request.contextPath}/assets/js/xml.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
	<script type="text/javascript">
		var textarea;
		for (let i = 0; i < $(".xml").length; i++) {
			textarea = document.getElementById('codemirror' + i);
			var editor = CodeMirror.fromTextArea(textarea, {
				lineNumbers : true,
				lineWrapping : true,
				value : "function myScript(){return 100;}\n",
				mode : "xml",
				readOnly : "false"
			});
		}
		for (let i = 0; i < $(".javascript").length; i++) {
			textarea = document.getElementById('javascript' + i);
			var editor = CodeMirror.fromTextArea(textarea, {
				lineNumbers : true,
				lineWrapping : true,
				value : "function myScript(){return 100;}\n",
				mode : "javascript",
				readOnly : "false"
			});
		}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>