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
</head>
<body>
   <div id="wrapper">
      <jsp:include page="/WEB-INF/views/includes/tutorial_header.jsp" />

      <div id="tutorial-content-box">

         <!-- <div id="tutorial-contents" style="height:100%; background-color:unset"> -->
         <div id="tutorial-contents">
            <div class="tutorial-content-title">
               <h1>가이드 라인</h1>
               <div class="tutorial-content-path">
                  <p>Scenarios for development methodology</p>
               </div>
            </div>
            <div class="tutorial-content-desc">
               <div id="scenario1-1" class="sub-title">
                  <h1></h1>
               </div>
               <div id="scenario1-2" class="sub-title-description scenarioOFF">
                  <h3></h3>
               </div>
               <div class="tutorial-component scenarioOFF">
                  <div class="tutorial-component-description-box">
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror0">
</textarea>
                     </div>
                  </div>
               </div>
               <div id="scenario2-1" class="sub-title scenarioOFF">
                  <h1></h1>
               </div>
               <div id="scenario2-2" class="sub-title-description scenarioOFF">
                  <h3></h3>
               </div>
               <div class="tutorial-component scenarioOFF">
                  <div class="tutorial-component-description-box">
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror1">
</textarea>
                     </div>
                  </div>
               </div>
               
               <div id="scenario3-1" class="sub-title scenarioOFF">
                  <h1></h1>
               </div>
               <div id="scenario3-2" class="sub-title-description scenarioOFF">
                  <h3></h3>
               </div>
               <div class="tutorial-component scenarioOFF">
                  <div class="tutorial-component-description" style="width: calc(100% - 450px);">
                     <p><span class="ds-tag-value">&nbsp;ds-ui-datepicker</span>&#9;클래스 명칭</p>
                     <p>
                        <span class="ds-tag-value">&nbsp;required</span>&#9;필수(required)
                                <span class="ds-tag-value">&nbsp;readonly</span>&#9;읽기전용(readonly)
                                <span class="ds-tag-value">&nbsp;disabled</span>&#9;비활성화(disabled)
                            </p>
                              <p><span class="ds-tag-value">&nbsp;data-ds-min</span>&#9;최소값</p>
                              <p><span class="ds-tag-value">&nbsp;data-ds-max</span>&#9;최대값</p>
                             <p><span class="ds-tag-value">&nbsp;data-ds-init-date</span>&#9;오늘 날짜 선택</p>
                             <p><span class="ds-tag-value">&nbsp;data-ds-label</span>&#9;날짜 피커 레이블 유무 선택</p>
                            <p><span class="ds-tag-value">&nbsp;data-ds-language</span>&#9;다국어 지원(기본값 : 한국어, 설정값 : en)</p>
                  </div>
                  
                  <div class="tutorial-component-description-box"><!-- 옵션 적용 codemirror -->
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode xml" id="codemirror2">
</textarea>
                     </div>
                  </div>
               </div>
               <div id="scenario3-3" class="sub-title-description scenarioOFF">
                  <h3></h3>
               </div>
               <div class="tutorial-component scenarioOFF">
                  
                  <div class="tutorial-component-description-box"><!-- 옵션 적용 codemirror -->
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode javascript" id="javascript0">
</textarea>
                     </div>
                  </div>
               </div>               
            </div>

            <!-- <div> -->
            <div class="scenarioOFF">
               <button id="scenario-play-btn" class="scenario-play-btn"></button>
               <span class="scenario-play-text">결과보기</span>
            </div>
         </div>
         <jsp:include page="/WEB-INF/views/includes/tutorial_navigator.jsp" />

      </div>



   </div>
   
   <div>
   </div>
   <div id="scenario-popup" class="scenario-resultView-Box" style="opacity: 0;">
      <div class="scenario-overlay" style="opacity: 0;"></div>
      <div class="scenario-resultView">
         <div class="resultView-col-2">
            <div class="resultView-row-2">
               <div class="soucecode-titel">
                  <span><img src="https://cdn1.iconfinder.com/data/icons/hawcons/32/699061-icon-70-document-code-32.png" style="background-color: #ebebeb;"></span>
                  <span>basic-guidline.html</span>
               </div>
                  <div style="width:100%;height: 94%%;">
                     <textarea class="tutorial-sourcecode xml" id="codemirror3">
<html>
   <head>
      <title></title>
   </head>
   <body>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">기본</h3>
      <div style="height: 7%;">
         <input type="text" id="date1" class="ds-ui-datepicker"> <input
            type="text" id="date2" class="ds-ui-datepicker" value="20190630">
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">상태별</h3>
      <div style="height: 15%;">
         <input type="text" id="date3" class="ds-ui-datepicker"> <input
            type="text" id="date4" class="ds-ui-datepicker required"> <input
            type="text" id="date5" class="ds-ui-datepicker readonly"> <input
            type="text" id="date6" class="ds-ui-datepicker disabled">
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">읽기 전용여부
         설정/가져오기</h3>
      <div style="height: 8%;">
         <input type="text" id="date7" class="ds-ui-datepicker">
      </div>
      <div style="padding-left: 6px; text-align: left; height: 8%;">
         <button id="btnSetReadonly" class="ds-ui-button">읽기전용 설정</button>
         <button id="btnRemoveReadonly" class="ds-ui-button">읽기전용 해제</button>
         <button id="btnReadonlyState" class="ds-ui-button">읽기전용 상태</button>
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">비활성화여부 설정/가져오기</h3>
      <div style="height: 7%;">
         <input type="text" id="date8" class="ds-ui-datepicker"
            value="20190617">
      </div>
      <div style="padding-left: 6px; text-align: left; height: 8%;">
         <button id="btnDisable" class="ds-ui-button">활성화</button>
         <button id="btnEnable" class="ds-ui-button">비화성화</button>
         <button id="btnEnableState" class="ds-ui-button">활성화 상태</button>
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">값/텍스트 가져오기</h3>
      <div style="height: 8%;">
         <input type="text" id="date9" class="ds-ui-datepicker"
            value="20190520">
      </div>
      <div style="padding-left: 6px; text-align: left; height: 8%;">
         <button id="btnValue" class="ds-ui-button">값 가져오기(value)</button>
         <button id="btnText" class="ds-ui-button">텍스트 가져오기(text)</button>
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">값 설정하기</h3>
      <div style="height: 8%;">
         <input type="text" id="date10" class="ds-ui-datepicker">
      </div>
      <div style="height: 8%; text-align: left; padding-left: 6px">
         <button id="btnSetValue" class="ds-ui-button">값 설정</button>
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">최소, 최대값 설정하기</h3>
      <div style="height: 8%;">
         <input type="text" id="date11" class="ds-ui-datepicker"
            data-ds-min="20190501" data-ds-max="20190728">
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">오늘날짜 세팅</h3>
      <div style="height: 8%;">
         <input type="text" id="date12" class="ds-ui-datepicker"
            data-ds-init-date="true">
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">레이블추가</h3>
      <div style="height: 8%;">
         <input type="text" id="date14" class="ds-ui-datepicker"
            data-ds-label="날짜">
      </div>
      <hr>
      <h3 style="text-align: left; padding: 2px 0 0 7px;">다국어 지원(en)</h3>
      <div style="height: 8%;">
         <input type="text" id="date13" class="ds-ui-datepicker"
            data-ds-language="en">
      </div>
      <script type="text/javascript"
         src="http://106.10.41.222:8080/ds_code/js/ds-css.js"></script>
      <script type="text/javascript"
         src="http://106.10.41.222:8080/ds_code/js/ds-js.js"></script>
   
      <script>
      $(document).ready(function () {   
           // 읽기 전용여부 설정/가져오기
           $("#btnSetReadonly").click(function () {
              ds.ui.datepicker('#date7').readonly(true);
           });
           $("#btnRemoveReadonly").click(function () {
              ds.ui.datepicker('#date7').readonly(false);
           });
           $("#btnReadonlyState").click(function () {
              ds_msgbox.alert(ds.ui.datepicker('#date7').readonly()).done(function(){}); // tutorial
           });
   
              // 비활성화여부 설정/가져오기
           $("#btnDisable").click(function () {
              ds.ui.datepicker('#date8').disabled(true);
           });
           $("#btnEnable").click(function () {
              ds.ui.datepicker('#date8').disabled(false);
           });
           $("#btnEnableState").click(function () {
              ds_msgbox.alert(ds.ui.datepicker('#date8').disabled()).done(()=>{}); // tutorial
           });
   
           // 값/텍스트 가져오기
           $("#btnValue").click(function () {
              ds.ui.datepicker("#date9").value();
           });
           $("#btnText").click(function () {
              ds.ui.datepicker("#date9").text();
           });
   
           // 값 설정하기
           $("#btnSetValue").click(function () {
                ds.ui.datepicker("#date10").value("20151212");
            });
        });   
      </script>
   </body>
</html></textarea>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <div id="scenario-popup2" class="scenario-resultView-Box scenarioOFF">
      <div class="scenario-resultView2">
         <div class="phone3">
            <iframe class="window3" src="component/datepicker"></iframe>
         </div>
      </div>
   </div>
   <div id="scenario-popup3" class="scenario-resultView-Box scenarioOFF">
      <div class="scenario-resultView3">
         <div class="resultView-col-2 " style="background-color: unset;height: unset;">
            <h2>Basic Guid Line</h2>
            <br>
            <p>
               기본 컴포넌트 관련 가이드 라인 입니다.<br><br>
               필수사항&nbsp: <br>
               &lt;head&gt; 태그에 내에 css파일이 링크되어야 합니다.<br>
               &lt;script&gt; 태그에 내에 js파일이 링크되어야 합니다.<br>
               <br> 
               링크를 걸어주었다면 바로 컴포넌트를 사용하면 됩니다.<br><br>
               해당 컴포넌트는 태그내에서 data-Option으로 기능을 부여할 수 있습니다.<br>
            </p>
            <br>
            <Button id="guideline-trans-btn" class="ds-ui-basicButton">스크립트 가이드라인</Button>
            <br><br>
            <Button id="script-copy-btn" class="ds-ui-basicButton">복사</Button>
            <Button id="resultView-out-btn" class="ds-ui-basicButton">나가기</Button>
         </div>
      </div>
   </div>
   <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/codemirror.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/xml.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/htmlmixed.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/javascript.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/css.js"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/jquery.typist.js"></script>
   <script type="text/javascript"
      src="${pageContext.request.contextPath}/assets/js/tutorial.js"></script>
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
   for(let i=0;i<$(".css").length;i++){
      textarea = document.getElementById('css'+i);
      var csseditor = CodeMirror.fromTextArea(textarea, {
         lineNumbers : true,
         lineWrapping : true,
         value : "function myScript(){return 100;}\n",
         mode : "css",
      });
   }
   for(let i=0;i<$(".javascript").length;i++){
      textarea = document.getElementById('javascript'+i);
      var jseditor = CodeMirror.fromTextArea(textarea, {
         lineNumbers : true,
         lineWrapping : true,
         value : "function myScript(){return 100;}\n",
         mode : "javascript",
      });
   }
   
   jQuery(function($) {
      
      // scenario1
      $('#scenario1-1').children()
      .typist({
         speed: 20,
         text: "#1. 프레임워크 파일 링크"
      })
      .typistStop()
      .on('end_type.typist', function() {
         scenario1_1();
      });
      
      const scenario1_1 = function() {
         $('#scenario1-2').removeClass('scenarioOFF');
         $('#scenario1-2').children()
         .typist({
            speed: 20,
            text: "서버에 저장되어 있는 프레임워크 파일을 해당 스크립트 내에 적용합니다."
         })
         .typistStop()
         .on('end_type.typist', function() {
            scenario1_2();
         });
      }
      var s_script = '<script',
      e_script = '</'+'script>';
      const scenario1_2 = function() {
         var inputData = s_script + ' type="text/javascript" src="http://106.10.41.222:8080/ds_code/js/ds-css.js">' + e_script;
         inputData += '\n' + s_script + ' type="text/javascript" src="http://106.10.41.222:8080/ds_code/js/ds-js.js">' + e_script;
         codemirorTypist('#codemirror0', inputData , 25, scenario2_1);
      }
      
      // scenario2
      var cnt = 0;
      const scenario2_1 = function() {
         $('#scenario2-1').removeClass('scenarioOFF');
         $('#scenario2-1').children()
         .typist({
            speed: 20,
            text: "#2. 컴포넌트 작성"
         })
         .typistPause(1500)
         .typistRemove(7)
         .typistAdd('날짜피커')
         .typistStop()
         .on('end_type.typist', function() {
            if(cnt == 0) return cnt++;
            scenario2_2();
         });
      }
      const scenario2_2 = function() {
         $('#scenario2-2').removeClass('scenarioOFF');
         $('#scenario2-2').children()
         .typist({
            speed: 20,
            text: "html파일에 해당 태그를 사용합니다."
         })
         .typistStop()
         .on('end_type.typist', function() {
            scenario2_3();
         });
      }
      const scenario2_3 = function() {
         var inputData = '<input type="text" id="date1" class="ds-ui-datepicker">';
         codemirorTypist('#codemirror1', inputData , 20, scenario3_1);
         
      }
      const scenario3_1 = function() {
         $('#scenario3-1').removeClass('scenarioOFF');
         $('#scenario3-1').children()
         .typist({
            speed: 20,
            text: "#3. 옵션 추가하기"
         })
         .typistStop()
         .on('end_type.typist', function() {
            scenario3_2();
         });
      }
      cnt = 0;
      const scenario3_2 = function() {
         $('#scenario3-2').removeClass('scenarioOFF');
         $('#scenario3-2').children()
         .typist({
            speed: 20,
            text: "먼저 해당 컴포넌트를 적용할 옵션들을 확인합니다."
         })
         .typistPause(1000)
         .typistRemove(27)
         .typistAdd('옵션 종류')
         .typistStop()
         .on('end_type.typist', function() {
            if(cnt == 0 || cnt == 1) return cnt++;
            var inputData = '<input type="text" id="date2" class="ds-ui-datepicker required">\n<input type="text" id="date3" class="ds-ui-datepicker readonly">\n<input type="text" id="date4" class="ds-ui-datepicker disabled">\n<input type="text" id="date5" class="ds-ui-datepicker" data-ds-min="20190501" data-ds-max="20190728">\n<input type="text" id="date6" class="ds-ui-datepicker" data-ds-init-date="true">\n<input type="text" id="date7" class="ds-ui-datepicker" data-ds-label="날짜">\n<input type="text" id="date8" class="ds-ui-datepicker" data-ds-language="en">';
            
            codemirorTypist('#codemirror2', inputData , 20, scenario3_3);
         });
      }
      const scenario3_3 = function(){
         $('#scenario3-3').removeClass('scenarioOFF');
         $('#scenario3-3').children()
         .typist({
            speed: 20,
            text: "스크립트 설정 필요시"
         })
         .typistStop()
         .on('end_type.typist', function() {
            if(cnt == 0 || cnt == 1) return cnt++;
            var inputData = '// 읽기전용 여부 설정/가져오기\nds.ui.datepicker("#data3").readonly(); // [true, false, ()]\n\n// 비활성화 여부 설정/가져오기\nds.ui.datepicker("#date4").disabled(); // [true, false, ()]\n\n// 값/텍스트 가져오기\nds.ui.datepicker("#date9").value();\nds.ui.datepicker("#date9").text();\n\n// 값 설정하기\nds.ui.datepicker("#date1").value("20151212");';
            
            codemirorTypist('#javascript0', inputData , 20, scenario3_4);
         });
      }
      const scenario3_4 = function(){
         $('.scenario-play-btn').parent().removeClass('scenarioOFF');
      }
      
      
      
      
      
      
      
      const codemirorTypist = function(id, inputData, speed, func) {
         
         var el_id = id.replace(/#/gi, '');
         console.log(el_id)
         $(id).parent().parent().parent().removeClass('scenarioOFF');
         $(id).parent().find('.CodeMirror-line').children()
         .typist({
            speed: speed,
            text: inputData
         })
         .typistStop()
         .on('end_type.typist', function() {
            $($('.testdd')[0].childNodes).unwrap();
            $(id)[0].innerHTML = inputData;

            console.log($(id)[0].innerText);
            $(id).parent().find('.CodeMirror').remove();
            textarea = document.getElementById(el_id);
            var editor = CodeMirror.fromTextArea(textarea, {
               lineNumbers : true,
               value : "function myScript(){return 100;}\n",
               mode : "xml",
               readOnly: "false" 
            });
            
            func();
            
         });
      }
      
      
      $('#scenario-play-btn').on('click', function(){
         $('#scenario-play-btn').addClass('scenarioOFF');
         
         $('#scenario-popup').removeClass('scenarioOFF');
         $('#scenario-popup').removeAttr('style');
         $('#scenario-popup').children().removeAttr('style');
         
         $('#scenario-popup2').removeClass('scenarioOFF');//.removeClass('scenarioOFF');
         $('#scenario-popup3').removeClass('scenarioOFF');//.removeClass('scenarioOFF');
         
      });
      
      $('#scenario-popup').addClass('scenarioOFF');
         
      // resultView btn event
      $('#guideline-trans-btn').on('click', function(){
         /* replace 방식*/
         window.location.replace("script_guideline");
      });
      $('#script-copy-btn').on('click', function(){
         var scriptContent = $('#scenario-popup').find('textarea').text();
         copyToClipboard(scriptContent);
         alert('복사 완료!');
      });
      $('#resultView-out-btn').on('click', function(){
         $('#scenario-play-btn').removeClass('scenarioOFF');
         $('#scenario-popup').addClass('scenarioOFF');//.removeClass('scenarioOFF');
         $('#scenario-popup2').addClass('scenarioOFF');//.removeClass('scenarioOFF');
         $('#scenario-popup3').addClass('scenarioOFF');//.removeClass('scenarioOFF');
      });
      
   });
   function copyToClipboard(val) {
     var t = document.createElement("textarea");
     document.body.appendChild(t);
     t.value = val;
     t.select();
     document.execCommand('copy');
     document.body.removeChild(t);
   }
   </script>
</body>
</html>