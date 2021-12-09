function setSpawner(amount, rate, hp, spd, checkTime){	
	spawnAmount = amount;
	spawnCount = 0;
	global.spawnRate = room_speed * rate;
	global.checkTime = room_speed * checkTime;
	
	global.hp = hp;
	global.spd = spd;
	
	alarm[0] = 1;
	alarm[1] = global.checkTime;
}

function spawnEnemy(){
	if(spawnCount < spawnAmount){
		instance_create_layer(x, y, "Enemies", enemyLV1Object);
		spawnCount++;
		alarm[0] = global.spawnRate / global.timeScale;
	}
}

function spawnBoss(){
	amount = 0;
	//global.plusCoins += 2;
	while(global.level / 10 > amount){
		instance_create_layer(x, y, "Enemies", enemyBossObject);
		amount++;
	}
}

function increaseLevel(){
	if(instance_number(enemyLV1Object) <= 1){
		spawnCount = 0;
		spawnAmount += 2;
		if(global.spawnRate >= 6){
			global.spawnRate -= 1;
		}
		global.level++;
		global.hp += 5;
		global.spd += 0.1;
		
		alarm[0] = global.spawnRate / global.timeScale;;
		
		if(global.level mod 10 == 0){
			spawnBoss();
			global.hp += 30;
			global.spd += 0.2;
		}
	}
	alarm[1] = global.checkTime / global.timeScale;
}

function setEnemy(){
	path_start(enemyPath, global.spd * global.timeScale, 0, 1);
	enemyHP = global.hp;
}

function setBossEnemy(){
	path_start(enemyPath, global.spd * 2 * global.timeScale, 0, 1);
	enemyHP = global.hp * 3;
}

function updateEnemy(){
	image_angle = direction;
	path_speed = global.spd * global.timeScale;
	if(enemyHP <= 0){
		instance_destroy();
		global.coins += global.plusCoins;
	}
	
	if(path_position == 1){
	    room_goto(lossRoom);	
	}
}

function updateBossEnemy(){
	image_angle = direction;
	path_speed = global.spd * global.timeScale;
	if(enemyHP <= 0){
		instance_destroy();
		global.coins += global.plusCoins * 3;
	}
	
	if(path_position == 1){
	    room_goto(lossRoom);	
	}
}