
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