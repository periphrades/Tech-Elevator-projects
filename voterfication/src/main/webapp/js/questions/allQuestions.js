/// <reference path="../jquery-3.1.1.js" />
$(document).ready(function () {


	const displayModify = $("button#modEnable")
	displayModify.on("click",function(event) {
		if ($(this).text() == "Modify") {
//			$(this).parent().siblings(".modifyMessage").children("#modifiedQuestion").attr("type", "text");
			$(this).parent().siblings(".modifyMessage").children("#modifiedQuestion").css("display", "block");
			$(this).parent().siblings(".modifyMessage").children("#modifiedQuestion").text($(this).parent().parent().siblings(".timeAndMessageBlock").children(".message-text").text())
			$(this).parent().siblings(".modifyMessage").children(".submitCancelButtons").children("#Modify").css("display", "block");
			$(this).parent().siblings(".modifyMessage").children(".submitCancelButtons").children("#disableMessage").css("display", "block");
//			$(this).css("left", "330px");
//			$(this).parent().siblings(".questionDelete").css("left","250px");
//			$(this).text("Cancel?");
		}
		else if ($(this).text() == "Cancel?") {
				$(this).parent().siblings(".modifyMessage").children("#modifiedQuestion").attr("type", "hidden");
				$(this).parent().siblings(".modifyMessage").children(".submitCancelButtons").children("#modifiedQuestion").text("");
			$(this).parent().siblings(".modifyMessage").children(".submitCancelButtons").children("#Modify").css("display", "none");
			$(this).parent().siblings(".modifyMessage").children(".submitCancelButtons").children("#disableMessage").css("display", "none");
			$(this).css("left", "0px");
			$(this).parent().siblings(".questionDelete").css("left","175px");
			$(this).text("Modify");
	}
		console.log("success")
	});
	
	const displayDisable = $("button#disableMessage")
	displayDisable.on("click",function(event) {
		if ($(this).css("display") == "block") {
//			$(this).parent().siblings("#modifiedQuestion").attr("type", "hidden");
			$(this).parent().siblings("#modifiedQuestion").css("display", "none");
			$(this).parent().siblings("#modifiedQuestion").text("");
			$(this).siblings("#Modify").css("display", "none");
			$(this).css("display", "none");
		}
	});
	
	
	
//	$(".mod-enable").on("click", function(event) {
//		
//		let $formRow = $(this).closest("div.row").next().next();
//		
//		$formRow.toggleClass("hidden");
//		
//		$(".mod-form").not($formRow).addClass("hidden");
//		
//	});
	

});