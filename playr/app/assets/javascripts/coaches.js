# Place all the behaviors and hooks related to the matching controller here.

//edit coach

$( document ).ready(function(){
	$("#edit-form").hide();
//clicking edit and cancel to hide and show form for coach update
var showing = false;
  	$("#edit").on('click', function(){
  		if(showing){
  			$("#edit-form").hide();
	  		$(this).html("Edit This Listing");
	  		showing = false; 
		}
		else{
			$("#edit-form").show();
	  		$(this).html("Cancel");
	  		showing = true;
		}
  });
});