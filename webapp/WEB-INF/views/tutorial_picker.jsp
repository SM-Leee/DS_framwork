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
					<h1>Picker</h1>
					<div class="tutorial-content-path">
						<p>Component > DropdownPicker</p>
					</div>
				</div>
				<div class="tutorial-content-desc">
					<div class="tutorial-component">
						<div class="tutorial-component-description-box">
							<h3>&nbsp;기본</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror0">
<select class="ds-ui-dropdown-picker">
	<option value="volvo">Volvo</option>
	<option value="assb">Saab</option>
	<option value="opel">Opel</option>
	<option value="audi">Audi</option>
</select></textarea>
							</div>

							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;ds-ui-drpodown-picker</span>&#9;클래스 이름 명칭</p>
							</div>
							<h3>&nbsp;label 추가</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror1">
<select class="ds-ui-dropdown-picker" data-ds-label="목 차">
	<option value="volvo">Volvo</option>
	<option value="assb">Saab</option>
	<option value="opel">Opel</option>
	<option value="audi">Audi</option>
</select></textarea>
							</div>

							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;data-ds-label</span>&#9;label이 필요할 시 사용하는 옵션</p>
							</div>
							<h3>&nbsp;가로 크기별</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror2">
<select class="ds-ui-dropdown-picker" data-ds-rows="2">
	<option value="volvo">Volvo</option>
	<option value="assb">Saab</option>
	<option value="opel">Opel</option>
	<option value="audi">Audi</option>
</select>

<select class="ds-ui-dropdown-picker" data-ds-label="목 차" data-ds-rows="2">
	<option value="volvo">Volvo</option>
	<option value="assb">Saab</option>
	<option value="opel">Opel</option>
	<option value="audi">Audi</option>
</select></textarea>
							</div>

							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;data-ds-rows</span>&#9;가로 길이 설정 (기본값 : 1)</p>
							</div>
							<h3>&nbsp;데이터 바인딩 및 Select Option 추가</h3>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode xml" id="codemirror3">
<select class="ds-ui-dropdown-picker" data-ds-label="목 차"
		data-ds-binding="exampleData" data-ds-item-binding="option"
		data-ds-value-field="category" data-ds-text-field="transname"></select></textarea>
							</div>
							<div class="tutorial-component-source">
								<textarea class="tutorial-sourcecode javascript" id="javascript0">
const exampleData = [ 
						{
							no : 1,
			 				company : "더존비즈온",
							good : 'tv',
		 					count : 5,
			 				price : 300000,
							date : '2019-06-11',
			 				category : 'plus',
			 				desc : '세금 영수증 끊어주세요.'
						}
					];
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
				];</textarea>
							</div>
							<div class="tutorial-component-description">
								<p><span class="ds-tag-value">&nbsp;data-ds-binding</span>&#9;데이터 바인딩 될 json 맵핑 </p>
								<p><span class="ds-tag-value">&nbsp;data-ds-value-field</span>&#9;맵핑된 데이터 column 맵핑 </p>
								<p><span class="ds-tag-value">&nbsp;data-ds-item-binding</span>&#9;select option에 들어갈 Table</p>
								<p><span class="ds-tag-value">&nbsp;data-ds-text-field</span>&#9;ds-item-binding에서 option에 들어갈 내용</p>
							</div>
						</div>

						<!-- 컴포넌트 뷰어 -->	 
						<div class="phone2">
							<div>
								<iframe class="window2" src="component/picker"></iframe>
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
			//theme: "eclipse",
			value : "function myScript(){return 100;}\n",
			mode : "xml",
			readOnly: "false"   
		});
		//$(textarea).remove();
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
		//$(textarea).remove();
	}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
</body>
</html>