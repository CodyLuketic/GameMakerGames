function setFont(font, color, valign, halign){
	draw_set_font(font);
	draw_set_colour(color);
	draw_set_valign(valign);
	draw_set_halign(halign);
}

function drawTitle(font, color, valign, halign, text){
	setFont(font, color, valign, halign);
	draw_text(room_width / 2, room_height / 3, text);;
	draw_line_width_colour(room_width / 30, room_height / 2.2, room_width / 1.04, room_height / 2.2, 20, c_white, c_black);
}

function drawButtonText(font, color, valign, halign, text){
	setFont(font, color, valign, halign);
	draw_text(room_width / 2, room_height / 1.29, text);
}

function drawTutorialText(font, color, valign, halign, text1, text2, text3){
	setFont(font, color, valign, halign);
	draw_text(room_width / 2, 160, text1);
	draw_text(room_width / 2, 260, text2);
	draw_text(room_width / 2, 360, text3);
}

function activateButton(roomDecision){
	room_goto(roomDecision);
}

function setGlobal(coins){
	global.level = 1;
	global.coins = coins;
	global.plusCoins = 1;
	global.timeScale = 1;
}

function setHighestLevel(){
	global.highestLevel = 1;
}

function drawInformation(font, color, valign, halign){
	setFont(font, color, valign, halign);
	draw_text(10, room_height / 6, "Coins: " + string(global.coins));
	draw_text(10, room_height / 6 + 70, "Level: " + string(global.level));
}

function changeSpeed(){
	if(global.timeScale == 1){
		global.timeScale = 2;	
	} else if(global.timeScale == 2){
		global.timeScale = 4;	
	} else if(global.timeScale == 4){
		global.timeScale = 1;
	}
}

function timeScaleUIUpdate(){
	draw_self();
	draw_text(room_width / 1.15, 65, "Speed: " + string(global.timeScale) + "x");
}

function upgradePopup(index){
	if (position_meeting(mouse_x, mouse_y, index))
    {
		length = 50;
        draw_rectangle_color(x - length, y - length, x + length, y + length, c_black, c_black, c_black, c_black, false);
		setFont(popUpFont, c_white, fa_center, fa_center);
		draw_text(x, y - 20, "Upgrade:");
		draw_text(x, y + 20, string(upgradeCost));
	}
}

function updateHighestLevel(){
	if(global.level > global.highestLevel){
	    global.highestLevel = global.level;	
	}
}

function playMusic(song){
	audio_play_sound(song, 1, true);	
}

function stopMusic(){
	audio_stop_all();	
}