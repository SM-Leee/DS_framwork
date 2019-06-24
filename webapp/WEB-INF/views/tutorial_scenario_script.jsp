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
                  <div class="tutorial-component-description-box">
                     <div class="tutorial-component-description">
                        <p><span class="ds-tag-class">&nbsp;id</span>&#9; radar 숫자 형식 고유 id 지정</p>
                        <br/>
                        <p><span class="ds-tag-value">&nbsp;dataSource</span>&#9;데이터 바인딩 될 JSON 객체명</p>
                        <p><span class="ds-tag-value">&nbsp;dsStandard</span>&#9;Column별 분류 기준 선택</p>
                        <p><span class="ds-tag-value">&nbsp;dsX</span>&#9;x축 기준 설정</p>
                        <p><span class="ds-tag-value">&nbsp;dsCalcDetail</span>&#9;상세 비교 기준 선택</p>
                        <p>&#9;횟수(Count), 곱(Mul : 'mul column1 column2'), 합(Add) 형식의 비교 조건 설정 </p>
                        <br/>
                        <p>&#8251;<span class="ds-tag-class">&nbsp;dsX&nbsp;</span>1차 분류 후 <span class="ds-tag-class">&nbsp;dsStandard&nbsp;</span>2차 재분류 후<span class="ds-tag-class">&nbsp; dsCalcDetail&nbsp;</span> 값으로 비교합니다.</p>
                     </div>
                     <div class="tutorial-component-source">
                        <textarea class="tutorial-sourcecode javascript" id="javascript0">
</textarea>
                     </div>
                  </div>
               </div>
            </div>

            <div class="scenarioOFF"> <!-- 버튼 off  -->
            <!-- <div> -->
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
                  <span>script-guidline.html</span>
               </div>
                  <div style="width:100%;height: 94%%;">
                     <textarea class="tutorial-sourcecode xml" id="codemirror2">
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- ########## 컴포넌트 넣는 곳 ########## -->
		<div class="contents">
			<div class='ds-ui-chart radar' id='radar1'></div>
			<div class='ds-ui-chart radar' id='radar2'></div>
			<div class='ds-ui-chart radar' id='radar3'></div>
		</div>
			
		<script type="text/javascript" src="http://106.10.41.222:8080/ds_code/js/ds-css.js"></script>
        <script type="text/javascript" src="http://106.10.41.222:8080/ds_code/js/ds-js.js"></script>
	
		<script type="text/javascript">
			/* category : plus, minus, etc */
			/* 회사 : A,B,C,D,E */
			/* 상품명 : tv, radio, pc, smartphone, teblet, monitor */
			const exampleData = [ {
				no : 1,
				company : 'A',
				good : 'tv',
				count : 5,
				price : 300000,
				date : '2017-12-12',
				category : 'plus',
				desc : ''
			}, {
				no : 2,
				company : 'A',
				good : 'pc',
				count : 10,
				price : 700000,
				date : '2018-10-19',
				category : 'etc',
				desc : ''
			}, {
				no : 3,
				company : 'D',
				good : 'pc',
				count : 13,
				price : 700000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 4,
				company : 'B',
				good : 'smartphone',
				count : 3,
				price : 500000,
				date : '2018-11-02',
				category : 'etc',
				desc : ''
			}, {
				no : 5,
				company : 'D',
				good : 'pc',
				count : 13,
				price : 400000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 6,
				company : 'C',
				good : 'tv',
				count : 10,
				price : 1800000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 7,
				company : 'C',
				good : 'radio',
				count : 12,
				price : 800000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 8,
				company : 'D',
				good : 'pc',
				count : 21,
				price : 50000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 9,
				company : 'C',
				good : 'pc',
				count : 4,
				price : 1500000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 10,
				company : 'A',
				good : 'pc',
				count : 3,
				price : 2500000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 11,
				company : 'A',
				good : 'pc',
				count : 10,
				price : 500000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 12,
				company : 'A',
				good : 'pc',
				count : 14,
				price : 400000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 13,
				company : 'A',
				good : 'pc',
				count : 12,
				price : 800000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 14,
				company : 'B',
				good : 'pc',
				count : 18,
				price : 400000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 15,
				company : 'B',
				good : 'pc',
				count : 11,
				price : 900000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 16,
				company : 'B',
				good : 'pc',
				count : 19,
				price : 200000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 17,
				company : 'B',
				good : 'pc',
				count : 8,
				price : 1100000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 18,
				company : 'B',
				good : 'pc',
				count : 5,
				price : 1300000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 19,
				company : 'C',
				good : 'pc',
				count : 7,
				price : 1500000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 20,
				company : 'C',
				good : 'pc',
				count : 14,
				price : 700000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 21,
				company : 'C',
				good : 'pc',
				count : 13,
				price : 500000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 22,
				company : 'C',
				good : 'pc',
				count : 18,
				price : 400000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 23,
				company : 'C',
				good : 'pc',
				count : 3,
				price : 1900000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 24,
				company : 'D',
				good : 'pc',
				count : 17,
				price : 200000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 25,
				company : 'D',
				good : 'pc',
				count : 8,
				price : 1000000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 26,
				company : 'D',
				good : 'pc',
				count : 12,
				price : 500000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 27,
				company : 'D',
				good : 'pc',
				count : 13,
				price : 500000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 28,
				company : 'D',
				good : 'pc',
				count : 15,
				price : 700000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 29,
				company : 'A',
				good : 'pc',
				count : 9,
				price : 1000000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 30,
				company : 'A',
				good : 'pc',
				count : 12,
				price : 100000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 31,
				company : 'A',
				good : 'pc',
				count : 10,
				price : 600000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 32,
				company : 'B',
				good : 'pc',
				count : 14,
				price : 400000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 33,
				company : 'B',
				good : 'pc',
				count : 15,
				price : 900000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 34,
				company : 'B',
				good : 'pc',
				count : 15,
				price : 900000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 35,
				company : 'C',
				good : 'pc',
				count : 12,
				price : 700000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 36,
				company : 'C',
				good : 'pc',
				count : 13,
				price : 300000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 37,
				company : 'C',
				good : 'pc',
				count : 6,
				price : 1700000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			}, {
				no : 38,
				company : 'D',
				good : 'pc',
				count : 20,
				price : 300000,
				date : '2018-11-01',
				category : 'plus',
				desc : ''
			}, {
				no : 39,
				company : 'D',
				good : 'pc',
				count : 13,
				price : 500000,
				date : '2018-11-01',
				category : 'minus',
				desc : ''
			}, {
				no : 40,
				company : 'D',
				good : 'pc',
				count : 9,
				price : 1500000,
				date : '2018-11-01',
				category : 'etc',
				desc : ''
			} ];
			const chartOption2 = [ {
				category : 'etc',
				transname : '미지급'
			}, {
				category : 'plus',
				transname : '수입'
			}, {
				category : 'minus',
				transname : '지출'
			} ];
			const tableOption = [ {
				img : '이미지'
			}, {
				good : '상품'
			}, {
				company : '회사'
			}, {
				count : '개수'
			}, {
				price : '가격'
			}, {
				date : '일자'
			}, {
				category : '분류'
			}, {
				desc : '설명'
			} ];
			ds.ui.chart('#radar1', {
				dataSource: exampleData,
				option : {
					dsStandard : 'category',
					dsX : 'company',
					dsCalcDetail : 'mul price count'
				},
				subOption : {
					
				}
			})
			ds.ui.chart('#radar1', {
				dataSource: exampleData,
				option : {
					dsStandard : 'category',
					dsX : 'company',
					dsCalcDetail : 'mul price count'
				},
				subOption : {
					
				}
			})
			ds.ui.chart('#radar2', {
				dataSource: exampleData,
				option : {
					dsStandard : 'category',
					dsX : 'company',
					dsCalcDetail : 'mul price count'
				},
				subOption : {
					dsTransferNaming : chartOption2
				}
			})
			ds.ui.chart('#radar3', {
				dataSource: exampleData,
				option : {
					dsStandard : 'category',
					dsX : 'company',
					dsCalcDetail : 'mul price count'
				},
				subOption : {
					dsTransferNaming : chartOption2,
					dsLegendPosition : 'top'
				}
			})
		</script>
	
	</body>
</html></textarea>
               </div>
            </div><!-- End resultView -->
            <!-- <div class="phone2" style="background: rgba(0,0,0,0) url(./assets/images/galaxy.png) no-repeat;background-size: 393px 735px;width: 100%;height: 91%;background-position: center;position: relative;">
               <iframe class="window3" src="component/input"></iframe>
            </div> -->
         </div>
      </div>
   </div>
   
   <div id="scenario-popup2" class="scenario-resultView-Box scenarioOFF">
      <!-- <div class="scenario-resultView2">
         <div class="phone3">
            <iframe class="window3" src="component/radarchart"></iframe>
         </div>
      </div> -->
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
            <Button id="guideline-trans-btn" class="ds-ui-basicButton">기본 가이드라인</Button>
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
            text: "#2. 프레임워크 사용"
         })
         .typistPause(1500)
         .typistRemove(8)
         .typistAdd('방사형 차트 적용')
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
         var inputData = '<div class="ds-ui-chart radar" id="radar1"></div>';
         codemirorTypist('#codemirror1', inputData , 20, scenario3_1);
         
      }
      const scenario3_1 = function() {
         $('#scenario3-1').removeClass('scenarioOFF');
         $('#scenario3-1').children()
         .typist({
            speed: 20,
            text: "#3. 스크립트 작성"
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
            text: "스크립트에 사용될 옵션 및 필수정보를 확인합니다."
         })
         .typistPause(1000)
         .typistRemove(27)
         .typistAdd('옵션 정보')
         .typistStop()
         .on('end_type.typist', function() {
            if(cnt == 0 || cnt == 1) return cnt++;
            setTimeout(function() {
               var inputData = "ds.ui.chart('#radar1',\n  {\n    dataSource: exampleData,\n    option : {\n      dsStandard : 'category',\n      dsX : 'company',\n      dsCalcDetail : 'mul price count'\n    },\n    subOption : {\n\n    }\n  });";
               codemirorTypist('#javascript0', inputData , 20, func);   
            }, 1000); // 1s delay.
         });
      }
      

      const func = function(){
         $('.scenario-play-btn').parent().removeClass('scenarioOFF');
      }
      
      
      
      
      
      
      const codemirorTypist = function(id, inputData, speed, func) {
         
         var el_id = id.replace(/#/gi, '')
            mode = '';
         console.log(el_id);
         if(el_id.indexOf('java') != -1) mode = 'javascript';
         if(el_id.indexOf('code') != -1) mode = 'xml';

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
               mode : mode,
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
         var add_content = '';
         add_content += 
            '<div class="scenario-resultView2">' +
               '<div class="phone3">' +
                  '<iframe class="window3" src="component/radarchart"></iframe>' +
               '</div>'+
            '</div>';
         $('#scenario-popup2').append(add_content);
         $('#scenario-popup3').removeClass('scenarioOFF');//.removeClass('scenarioOFF');
         
      });
      
      $('#scenario-popup').addClass('scenarioOFF');
      $('#scenario-popup2').addClass('scenarioOFF');
         
      // resultView btn event
      $('#guideline-trans-btn').on('click', function(){
         /* replace 방식*/
         window.location.replace("basic_guideline");
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
         $('#scenario-popup2').children().remove();
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