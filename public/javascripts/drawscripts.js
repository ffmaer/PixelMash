
function startAnimation() {


	$('#blue').delay(400).animate({
		opacity: 0
		}, 1000
	);

	$('#green').delay(500).animate({
		opacity: 0
		}, 1000
	);

	$('#pink').delay(600).animate({
		opacity: 0
		}, 1000
	);

	$('#yellow').delay(700).animate({
		opacity: 0
		}, 1000
	);

	$('#start_curtain').delay(3000).animate({
		opacity: 0
		}, 1000, 'swing', function () {
			$('.start_animation').hide();
	});
	
}

function switchForms() {

	$('#opponent_form').hide();
	$('#un_form_submit').click(function() {
		$('#un_form').animate({
			opacity: 0
			}, 100, 'linear', function () {
				$('#un_form').hide();
				$('#opponent_form').show().animate({
					top: 100
				}, 100);

			});

	});
}

function drawAnimation() {

	var delay_time = 1800;
	var hide_time = 700;

	$('.anim_text').hide();
	$('#draw_click_start').show();

	$('#curtain').click(function ( event ) {
    	event.preventDefault();
    	$('.anim_text').hide();
    	$('#anim1').show(1000).delay(delay_time).hide(hide_time);
    	$('#anim2').show(1999).delay(delay_time).hide(hide_time);
    	$('#anim3').show(2999).delay(delay_time).hide(hide_time);
    	$('#anim4').show(3999).delay(delay_time).hide(hide_time);
    	$('#anim5').show(4999).delay(delay_time).hide(hide_time);
    	$('#anim6').show(5999).delay(delay_time).hide(hide_time);

    	$('#curtain').delay(7000).animate({
    		opacity: 0,
    		height: 0
    	}, 1000, 'linear', function () {

    		$('#curtain').hide();
    	});


    });

}

function vote() {

	$('#vote_banner').hide();
	$('.stats').hide();

	$('.vote_button').click(function () {
		$('.vote_button').hide();
		$('#vote_banner').fadeIn();
		$('.stats').fadeIn();
	});
	
}

$(document).ready(function () {

	startAnimation();
	switchForms();
	drawAnimation();
	vote();


 });

