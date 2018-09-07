'use strict';   // Mode strict du JavaScript

/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/
var i = 0;

var pics = [];

var pic1 = { image :"images/1.jpg", caption :"street, yo"};

pics.push(pic1);

var pic2 = { image :"images/2.jpg", caption :"a road, yo"};

pics.push(pic2);

var pic3 = { image :"images/3.jpg", caption :"shit's lit, yo"};

pics.push(pic3);

var pic4 = { image :"images/4.jpg", caption :"that IS DOPE, yo"};

pics.push(pic4);

var pic5 = { image :"images/5.jpg", caption :"Dayum"};

pics.push(pic5);

var pic6 = { image :"images/6.jpg", caption :"This is Paris, yo"};

pics.push(pic6);

console.log(pics);


/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/

$('.triggerTools').click(function(){
	$('.tools').toggle();
});

var sliderAuto = $('#slider-toggle').on('click',picPlay);

$('#slider-next').click(picForward);

$('#slider-previous').click(picRewind);

$('#slider-random').click(picRandom);

/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/

function picPlay() {

	var i = 0;
	console.log('play');

	var playButton = $('#slider-toggle');

	playButton.html("");
	playButton.html("<i class='fas fa-pause'></i>");



	setInterval(function() {

			playButton.off('click',picPlay);
			playButton.on('click',sliderPause);



			var img = pics[i].image;
			console.log(img);

			var caption = pics[i].caption;
			console.log(caption);

			$('#slider').html("<img src=" + img + " alt='Image'><figcaption class='imageCaption'>" + caption + "</figcaption>");

			i++;
			console.log("i = " + i);

			if (i == 6) {
				i = 0;
			}

	} , 1500);

}

function sliderPause() {

	var playButton = $('#slider-toggle');


		console.log('click stop');
		clearInterval(sliderAuto);
		playButton.html("");
		playButton.html("<i class='fas fa-play'></i>");

	}

function picForward() {

	console.log("Forward");

	i++;

	if (i == 6) {
	i = 0; }



	console.log(i);

	var img = pics[i].image;
	var caption = pics[i].caption;

	$('#slider').html("<img src=" + img + " alt='Image'><figcaption class='imageCaption'>" + caption + "</figcaption>");



	} 




function picRewind() {


	if (i == 0 || i == -1) {
		i = 6; }

	i--;


	console.log("Forward");

	console.log(i);

	var img = pics[i].image;
	var caption = pics[i].caption;



	$('#slider').html("<img src=" + img + " alt='Image'><figcaption class='imageCaption'>" + caption + "</figcaption>");


		$('#slider').html("<img src=" + img + " alt='Image'><figcaption class='imageCaption'>" + caption + "</figcaption>");

	} 




function picStop() {

}

function picRandom() {

	var rand = Math.floor(Math.random()*5+1);

	console.log(rand);
	var img = pics[rand].image;
	var caption = pics[rand].caption;

	$('#slider').html("<img src=" + img + " alt='Image'><figcaption class='imageCaption'>" + caption + "</figcaption>");


	

}

