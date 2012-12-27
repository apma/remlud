// Simple JavaScript Rotating Banner Using jQuery
// www.mclelun.com

// Edit jqb_eff to change transition effect.
// 1 - FadeIn FadeOut
// 2 - Horizontal Scroll
// 3 - Vertical Scroll
// 4 - Infinity Horizontal Scroll
// 5 - Infinity Vertical Scroll
var jqb_eff = 2;

//Variables
var jqb_vCurrent = 0;
var jqb_vTotal = 0;
var jqb_vSpeed = 500;
var jqb_vDuration = 5000;
var jqb_intInterval = 0;
var jqb_vGo = 1;
var jqb_vBusy = false;
var jqb_vIsPause = false;
var jqb_tmp = 20;
var jqb_title;
var jqb_imgW = 960;
var jqb_imgH = 345;

jQuery(document).ready(function() {	
	jqb_vTotal = $(".banners").children().size() -1;
	$(".jqb_info").text($(".banner").attr("title"));	
	jqb_intInterval = setInterval(jqb_fnLoop, jqb_vDuration);
	
	if(jqb_eff == 2 || jqb_eff == 4)//Horizontal Alignment
	{
		$("#banner").find(".banner").each(function(i) { 
			jqb_tmp = ((i - 1)*jqb_imgW) - ((jqb_vCurrent -1)*jqb_imgW);
			$(this).animate({"left": jqb_tmp+"px"}, 0);
		});
	} 
	else if(jqb_eff == 3 || jqb_eff == 5)//Vertical Alignment
	{
		$("#banner").find(".banner").each(function(i) { 
		jqb_tmp = ((i - 1)*jqb_imgH) - ((jqb_vCurrent -1)*jqb_imgH);
		$(this).animate({"top": jqb_tmp+"px"}, 0);
		});
	}

	$("#btn_pauseplay").click(function() {
		if(jqb_vIsPause){
			jqb_fnChange();
			jqb_vIsPause = false;
			$("#btn_pauseplay").removeClass("jqb_btn_play");
			$("#btn_pauseplay").addClass("jqb_btn_pause");
		} else {
			clearInterval(jqb_intInterval);
			jqb_vIsPause = true;
			$("#btn_pauseplay").removeClass("jqb_btn_pause");
			$("#btn_pauseplay").addClass("jqb_btn_play");
		}
	});
	$("#btn_prev").click(function() {
		if(!jqb_vBusy)
		{
			jqb_vBusy = true;
			jqb_vGo = -1;
			jqb_fnChange();
		}
	});
		
	$("#btn_next").click(function() {
		if(!jqb_vBusy)
		{
			jqb_vBusy = true;
			jqb_vGo = 1;
			jqb_fnChange();
		}
	});
});

function jqb_fnChange(){
	clearInterval(jqb_intInterval);
	jqb_fnLoop();
	jqb_intInterval = setInterval(jqb_fnLoop, jqb_vDuration);
}

function jqb_fnLoop(){
	if(jqb_vGo == 1){
		jqb_vCurrent == jqb_vTotal ? jqb_vCurrent = 0 : jqb_vCurrent++;
	} else {
		jqb_vCurrent == 0 ? jqb_vCurrent = jqb_vTotal : jqb_vCurrent--;
	}

	$("#banner").find(".banner").each(function(i) { 
		if(i == jqb_vCurrent){
			jqb_title = $(this).attr("title");
			$(".jqb_info").animate({ opacity: 'hide', "left": "-50px"}, 250,function(){
				$(".jqb_info").text(jqb_title).animate({ opacity: 'show', "left": "0px"}, 500);
			});
		} 
				

		if(jqb_eff == 2)//Horizontal Scrolling
		{
			jqb_tmp = ((i - 1)*jqb_imgW) - ((jqb_vCurrent -1)*jqb_imgW);
			$(this).animate({"left": jqb_tmp+"px"}, jqb_vSpeed, function() { jqb_vBusy = false; });
		}
		else if(jqb_eff == 3)//Vertical Scrolling
		{
			jqb_tmp = ((i - 1)*jqb_imgH) - ((jqb_vCurrent -1)*jqb_imgH);
			$(this).animate({"top": jqb_tmp+"px"}, jqb_vSpeed, function() { jqb_vBusy = false; });
		}	
		else if(jqb_eff == 4)//Infinity Horizontal Scrolling
		{
			if(jqb_vTotal == 1) //IF 2 SLIDE ONLY, FIX
			{
				if(jqb_vGo == 1){
					if(($(this).position().left) < 0 )
					{
						$(this).animate({"left": jqb_imgW +"px"}, 0);
					}
				} else {
					if(($(this).position().left) > (jqb_imgW * (jqb_vTotal - 1)))
					{	
						$(this).animate({"left": (-1 * jqb_imgW)+"px"}, 0);
					}
				}
			}

			jqb_tmp = $(this).position().left - (jqb_imgW * jqb_vGo);
			  $(this).animate({"left": jqb_tmp+"px"}, jqb_vSpeed, function() {
			
					if(($(this).position().left) < -jqb_imgW )
					{
						$(this).animate({"left": (jqb_imgW * (jqb_vTotal - 1))+"px"}, 0);
					}
					else if(($(this).position().left) > (jqb_imgW * (jqb_vTotal - 1)))
					{	
						$(this).animate({"left": (-1 * jqb_imgW)+"px"}, 0);
					}
				
				jqb_vBusy = false;
			  });
		}
		else if(jqb_eff == 5)//Infinity Vertical Scrolling
		{
			if(jqb_vTotal == 1) //IF 2 SLIDE ONLY, FIX
			{
				if(jqb_vGo == 1){
					if(($(this).position().top) < 0 )
					{
						$(this).animate({"top": jqb_imgH +"px"}, 0);
					}
				} else {
					if(($(this).position().top) > (jqb_imgH * (jqb_vTotal - 1)))
					{	
						$(this).animate({"top": (-1 * jqb_imgH)+"px"}, 0);
					}
				}
			}

			jqb_tmp = $(this).position().top - (jqb_imgH * jqb_vGo);
			  $(this).animate({"top": jqb_tmp+"px"}, jqb_vSpeed, function() {
			
					if(($(this).position().top) < -jqb_imgH )
					{
						$(this).animate({"top": (jqb_imgH * (jqb_vTotal - 1))+"px"}, 0);
					}
					else if(($(this).position().top) > (jqb_imgH * (jqb_vTotal - 1)))
					{	
						$(this).animate({"top": (-1 * jqb_imgH)+"px"}, 0);
					}
				
				jqb_vBusy = false;
			  });
		}
		else //if(jqb_eff == 1)//Fade In & Fade Out
		{
			if(i == jqb_vCurrent){
				$(this).animate({ opacity: 'show'}, jqb_vSpeed, function() { jqb_vBusy = false; });
			} else {
				$(this).animate({ opacity: 'hide'}, jqb_vSpeed, function() { jqb_vBusy = false; });
			}
		}
		
	});


}





