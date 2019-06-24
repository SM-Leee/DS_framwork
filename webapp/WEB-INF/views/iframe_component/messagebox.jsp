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
			<h2>alert</h2>
         <button id="btn-basic" class="ds-ui-button">alert 메세지박스</button><br><br>
         <button id="btn-basic2" class="ds-ui-button">alert 메세지박스2</button><br><br>
         <button id="btn-basic3" class="ds-ui-button">alert 메세지박스(주의사항)</button><br><br>
         <br><hr>
         <h2>confirm</h2>
         <button id="btn-basic4" class="ds-ui-button">confirm 메세지박스</button><br><br>
         <button id="btn-basic5" class="ds-ui-button">confirm 메세지박스(주의사항)</button><br><br>
         <br><hr>
         <h2>error</h2>
         <button id="btn-basic6" class="ds-ui-button">error 메세지박스</button><br><br>
         <button id="btn-basic7" class="ds-ui-button">error 메세지박스(자세히)</button><br><br>
         <br><hr>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/ds-js.js"></script>
	<script>
	$(document).ready(function () {
		//alert
	    $('#btn-basic').on('click', (e)=>{
	        ds_msgbox.alert('메세지입니다.\n샘플메세지입니다.').done(function() {
	            alert('done');
	        });
	    });
	    $('#btn-basic2').on('click', (e)=>{
	        ds_msgbox.alert('메세지입니다.\n샘플메세지입니다.','none').done(function() {
	            alert('done');
	        });
	    });
	    $('#btn-basic3').on('click', (e)=>{
	        ds_msgbox.alert('메세지입니다.\n샘플메세지입니다.','ico2').done(function() {
	            alert('done');
	        });
	    });
	
	    //confirm
	    $('#btn-basic4').on('click', (e)=>{
	        ds_msgbox.confirm('변경된 사항이 있습니다.\n저장하시겠습니까?')
	        .yes(function() {
	            alert('yes');
	        }).no(function() {
	            alert('no');
	        });
	    });
	    $('#btn-basic5').on('click', (e)=>{
	        ds_msgbox.confirm('변경된 사항이 있습니다.\n저장하시겠습니까?','ico2')
	        .yes(function() {
	            alert('yes');
	        }).no(function() {
	            alert('no');
	        });
	    });
	
	    //error
	    $('#btn-basic6').on('click', (e)=>{
	        ds_msgbox.error('거래처는 필수입력 사항입니다.')
	        .done(function() {
	            alert('done');
	        });
	    });
	    $('#btn-basic7').on('click', (e)=>{
	        ds_msgbox.error({
	            'message' : 'Error가 발생되었습니다.',
	            'error' : 'systme.invaildCaseException : [A]ds common.forms.help.'
	        })
	        .done(function() {
	            alert('done');
	        });
	    });
	});
	</script>
</body>
</html>