/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(scoreFont);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(global.score > highScore)
{
	ini_open("data.ini");
	
	ini_write_real("data", "Highscore", global.score);
	
	ini_close();
	
	highScore = global.score;
}

draw_text(room_width / 1.5, 15, highScoreText);
draw_text(room_width / 4, 15, scoreText);

scoreText = "Score: " + string(global.score);
highScoreText = "HighScore: " + string(highScore);