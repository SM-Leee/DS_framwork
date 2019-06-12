package com.douzone.framework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/component")
public class ComponentController {
	
	@RequestMapping("/input")
	public String input() {
		System.out.println("input");
		return "iframe_component/input";
	}
	@RequestMapping("/numberinput")
	public String numberinput() {
		System.out.println("numberinput");
		return "iframe_component/numberinput";
	}
	@RequestMapping("/textareainput")
	public String textareainput() {
		System.out.println("textareainput");
		return "iframe_component/textareainput";
	}
	@RequestMapping("/picker")
	public String picker() {
		System.out.println("picker");
		return "iframe_component/picker";
	}
	@RequestMapping("/datepicker")
	public String datepicker() {
		System.out.println("datepicker");
		return "iframe_component/datepicker";
	}
	@RequestMapping("/periodpicker")
	public String periodpicker() {
		System.out.println("periodpicker");
		return "iframe_component/periodpicker";
	}
	
	@RequestMapping("/button")
	public String button() {
		System.out.println("button");
		return "iframe_component/button";
	}
	@RequestMapping("/radiobutton")
	public String radiobutton() {
		System.out.println("radiobutton");
		return "iframe_component/radiobutton";
	}
	@RequestMapping("/togglebutton")
	public String togglebutton() {
		System.out.println("togglebutton");
		return "iframe_component/togglebutton";
	}
	
	@RequestMapping("/cardlist")
	public String cardlist() {
		System.out.println("cardlist");
		return "iframe_component/cardlist";
	}
	
	@RequestMapping("/chart")
	public String chart() {
		System.out.println("chart");
		return "iframe_component/chart";
	}
	@RequestMapping("/linechart")
	public String linechart() {
		System.out.println("linechart");
		return "iframe_component/linechart";
	}
	@RequestMapping("/radarchart")
	public String radarchart() {
		System.out.println("radarchart");
		return "iframe_component/radarchart";
	}
	@RequestMapping("/barchart")
	public String barchart() {
		System.out.println("barchart");
		return "iframe_component/barchart";
	}
	
	@RequestMapping("/layout")
	public String layout() {
		System.out.println("layout");
		return "iframe_component/layout";
	}
	@RequestMapping("/footer")
	public String footer() {
		System.out.println("footer");
		return "iframe_component/footer";
	}
	@RequestMapping("/header")
	public String header() {
		System.out.println("header");
		return "iframe_component/header";
	}
	@RequestMapping("/navigator")
	public String subtopic() {
		System.out.println("subtopic");
		return "iframe_component/subtopic";
	}
	
	@RequestMapping("/checkbox")
	public String checkbox() {
		System.out.println("checkbox");
		return "iframe_component/checkbox";
	}
	@RequestMapping("/rangeslider")
	public String rangeslider() {
		System.out.println("rangeslider");
		return "iframe_component/rangeslider";
	}
	@RequestMapping("/accordion")
	public String accordion() {
		System.out.println("accordion");
		return "iframe_component/accordion";
	}
	@RequestMapping("/datatable")
	public String datatable() {
		System.out.println("datatable");
		return "iframe_component/datatable";
	}
	@RequestMapping("/messagebox")
	public String messagebox() {
		System.out.println("messagebox");
		return "iframe_component/messagebox";
	}
	@RequestMapping("/staticbutton")
	public String staticbutton() {
		System.out.println("staticbutton");
		return "iframe_component/staticbutton";
	}
	@RequestMapping("/imageview")
	public String imageview() {
		System.out.println("imageview");
		return "iframe_component/imageview";
	}
	@RequestMapping("/statusview")
	public String statusview() {
		System.out.println("statusview");
		return "iframe_component/statusview";
	}
	@RequestMapping("/iconloader")
	public String iconloader() {
		System.out.println("iconloader");
		return "iframe_component/iconloader";
	}
	@RequestMapping("/test")
	public String test() {
		System.out.println("test");
		return "iframe_component/test";
	}
//	editor popup
	@RequestMapping("/popup")
	public String popup() {
		System.out.println("popup");
		return "popup/popup";
	}
}
