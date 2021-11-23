/// @description Insert description here
// You can write your code in this editor

cursor_sprite = cursorSprite;
window_set_cursor(cr_none);

global.score = 0

ini_open("data.ini");
	
highScore = ini_read_real("data", "Highscore", 0);
	
ini_close();

scoreText = "Score: " + string(global.score);
highScoreText = "HighScore: " + string(highScore);

global.terrainAdded = false;