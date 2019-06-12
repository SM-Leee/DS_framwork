<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="tutorial-navi">
	<ul>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">layout</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="layout">basic layout</a></li>
				<li class="sub-navi"><a href="header">header</a></li>
				<li class="sub-navi"><a href="navigator">navigator</a></li>
				<li class="sub-navi"><a href="footer">footer</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">input</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="input">basic input</a></li>
				<li class="sub-navi"><a href="numberinput">number input</a></li>
				<li class="sub-navi"><a href="textareainput">textArea input</a></li>
			</ul>
		</li>
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">picker</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="picker">dropdown picker</a></li>
				<li class="sub-navi"><a href="periodpicker">period picker</a></li>
				<li class="sub-navi"><a href="datepicker">date picker</a></li>
			</ul>
		</li>
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">button</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="button">Basic Button</a></li>
				<li class="sub-navi"><a href="radiobutton">Radio Button</a></li>
				<li class="sub-navi"><a href="togglebutton">Toggle Button</a></li>
				<li class="sub-navi"><a href="staticbutton">Static Button</a></li>
			</ul>
		</li>
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">cardlist</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="cardlist">Cardlist</a></li>
			</ul>
		</li>
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">chart</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="chart">Pie Chart</a></li>
				<li class="sub-navi"><a href="radarchart">Radar Chart</a></li>
				<li class="sub-navi"><a href="linechart">Line Chart</a></li>
				<li class="sub-navi"><a href="barchart">Bar Chart</a></li>
			</ul>
		</li>
		
		
		
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">checkbox</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="checkbox">basic checkbox</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">messagebox</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="messagebox">messagebox</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">rangeslider</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="rangeslider">rangeslider</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">accordion</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="accordion">accordion</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">datatable</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="datatable">datatable</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">view</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="imageview">imageview</a></li>
				<li class="sub-navi"><a href="statusview">statusview</a></li>
			</ul>
		</li>
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">iconloader</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<li class="sub-navi"><a href="iconloader">iconloader</a></li>
			</ul>
		</li>
		
		<!-- 
		<li class="">
			<div class="tutorial-navi-index">
				<div class="tutorial-navi-icon"><i class="icon fas fa-code"></i></div>
				<div class="tutorial-navi-title">test</div>
				<div class="tutorial-navi-arrow">
					<i class="icon fas fa-chevron-right"></i>
				</div>
			</div>
			<ul class="sub-navis">
				<a href="test"><li class="sub-navi">basic test</li></a>
			</ul>
		</li>
		 -->
		 <li class="">
			<a href="tutorial_exam">
				<div class="tutorial-navi-index">
					<div class="tutorial-navi-icon"><i class="icon far fa-edit"></i></div>
					<div class="tutorial-navi-title">simple editor</div>
					<div class="tutorial-navi-arrow"></div>
				</div>
			</a>
		</li>
	</ul>
</div>