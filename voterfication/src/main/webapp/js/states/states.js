$(document).ready( function () {
	
	$("#senators-table").on("click", function(event) {
		
		let $childRow = $(event.target).closest("tr").next("tr.child-row");
		
		if( !($(event.target).is("#repQuestion")) && !($(event.target).is("#questionText")) ) {
			
			$childRow.toggleClass("hidden");
			
//			$childRow.siblings(".child-row").addClass("hidden");
			
			$(".child-row").not($childRow).addClass("hidden");
			$(".question-form").addClass("hidden");
			$("button#repQuestion").text("Submit Question");
		}

	
	});
	
	$("#reps-table").on("click", function(event) {
		
		let $childRow = $(event.target).closest("tr").next("tr.child-row");
		
		if(!($(event.target).is("#repQuestion"))  && !($(event.target).is("#questionText")) ) {
			
			$childRow.toggleClass("hidden");
			
//			$childRow.siblings(".child-row").addClass("hidden");
			
			$(".child-row").not($childRow).addClass("hidden");
			$(".question-form").addClass("hidden");
			$("button#repQuestion").text("Submit Question");
		}
	
	});
	
	const displayModify = $("button#repQuestion");
	
	
	displayModify.on("click",function(event) {
		
		let $questionRow = $(this).closest("tr").next().next();
		$questionRow.toggleClass("hidden");
		$("tr.child-row").addClass("hidden");
//		$questionRow.siblings(".question-form").addClass("hidden");
		$(".question-form").not($questionRow).addClass("hidden");
		displayModify.not(this).text("Submit Question");
		
		if ($(this).text() == "Submit Question") {
			
//			$(this).siblings("form").children(".sendQuestion").children("#questionText").attr("type", "text");
//			$(this).siblings("form").children(".sendQuestion").children("#questionText").val("");
//			$(this).siblings("form").children(".sendQuestion").children("#submitQuestion").css("display", "inline-block");
			$(this).text("Cancel?");
		}
		else if ($(this).text() == "Cancel?") {
//				$(this).siblings("form").children(".sendQuestion").children("#questionText").attr("type", "hidden");
//				$(this).siblings("form").children(".sendQuestion").children("#questionText").val("");
//				$(this).siblings("form").children(".sendQuestion").children("#submitQuestion").css("display", "none");
				$(this).text("Submit Question");
		}

	});
	
	

	
	
});

