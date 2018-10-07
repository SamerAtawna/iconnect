
$(document).ready(function(){

$(".like, .comment, .share").hover(function() {
	$(this).css("background-color","e9ebee");
}, function() {
	$(this).css("background-color","white");
});

$(".like").click(function() {
	$(this).toggleClass('likeclick');
});

    $("#post").emojioneArea({
    filtersPosition: "bottom",
     pickerPosition: "bottom"
});



});


function search(srch)
{
	if(srch=="")
	{
		$("#info").css("display","none");
	}
	else{
			$("#info").css("display","block");
	$.ajax({
		
		url: 'search.php',
		type: 'post',
		dataType: 'html',
		data: {search: srch},
		success: function(result){
				   $("#info").slideDown('slow', function() {
				   	$(this).html(result);
				   });
		}
	})
	.done(function() {
	
	})
	.fail(function() {
		console.log("error");
	})
	.always(function() {
		console.log("complete");
	});
	
	}
}

$("#search").focusout(function(event) {
$("#info").css("display","none");
})
function like(postid)
{

                $.ajax({
                    type: "POST",

                    url: "like.php",
                    data: {
                        like: postid
                    },
                    cache: false,
                    datatype: "html",
                    success: function(result) {
                       $("#sp"+postid).html(result);
                    },
                    error: function(xhr, desc, err) {
                        console.log(xhr);
                        console.log("Details: " + desc + "\nError:" + err);

                    }
                });



            

}
		  	
function findplace(a) {
	  $("#placelist").children('li').remove();

	fetch('http://autocomplete.geocoder.api.here.com/6.2/suggest.json?app_id=FQILLWhL6qBAiQfjd8AV&app_code=tsb7kpss2ctn0m-0HRD91w&query='+a+'&beginHighlight=<b>&endHighlight=</b>')
    .then(function(response) {



     return  response.json();
    })
  .then(function(myJson) {


  	for(i=0;i<=4;i++)
  	{
  $("#placelist").append("<li>"+myJson.suggestions[i].label+"</li>");
    }
    });
}

