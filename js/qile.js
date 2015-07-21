$("document").ready(function(){
	$("#item").mouseover(function(){
		$("#item .dropdown-menu").show();
	});
	$("#item").mouseout(function(){
		$("#item .dropdown-menu").hide();
	});
	$("#more").mouseover(function(){
		$("#more .dropdown-menu").show();
	});
	$("#more").mouseout(function(){
		$("#more .dropdown-menu").hide();
	});

})

