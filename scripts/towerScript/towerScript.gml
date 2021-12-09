function setTowerClicked(amount){
	cost = amount;
}

function drawTower(font, color, valign, halign){
	draw_self();
	setFont(font, color, valign, halign);

	draw_text(x + 100, y + 5, string(cost));
}

function towerClickable(tower){
	if(global.coins >= cost){
		instance_create_layer(mouse_x, mouse_y, "Towers", tower);
		global.coins -= cost;
	}
}
function setTowerDragged(range){
	turretRange = range;
	color = c_white;
}

function moveTower(){
	x = mouse_x;
	y = mouse_y;
	if(place_meeting(x, y, nonPlaceableRegionObject)){
		color = c_red;
	} else{
		color = c_white;
	}
	image_blend = color;
}

function drawRange(index, range){
	draw_self();
	if (position_meeting(mouse_x, mouse_y, index))
    {
		draw_set_circle_precision(64);
		draw_circle(x, y, range, true);
    }
}

function placeTower(tower){
	if(color == c_white){
		instance_create_layer(mouse_x, mouse_y, "BoundsPlacing", nonPlaceableRegionObject);
		instance_create_layer(mouse_x, mouse_y, "Towers", tower);
		instance_destroy();
	}
}

function setTowerBase(range, rate, upCost){
	turretRange = range;
	fireRate = rate;
	shooting = false;
	instanceToShoot = noone;
	upgradeCost = upCost;
}

function towerFindEnemy(){
	drawRange(id, turretRange);
	
	enemy = instance_nearest(x, y, enemyBossObject);
	if(enemy != noone){
		if(point_distance(x, y, enemy.x, enemy.y) <= turretRange){
			if(!shooting){
				alarm[0] = 1;
				shooting = true;
			}	
			instanceToShoot = enemy;
		} else {
			shooting = false;
			instanceToShoot = noone;
		}
	} else {
		enemy = instance_nearest(x, y, enemyLV1Object);
		if(enemy != noone){
			if(point_distance(x, y, enemy.x, enemy.y) <= turretRange){
				if(!shooting){
					alarm[0] = 1;
					shooting = true;
				}	
				instanceToShoot = enemy;
			} else {
				shooting = false;
				instanceToShoot = noone;
			}
		}
	}
}

function towerShoot(bullet, bulletSpeed, element){
	if(instance_exists(instanceToShoot)){
		bullet = instance_create_layer(x, y, "Bullets", bullet);
		bullet.speed = bulletSpeed * global.timeScale;
		bullet.direction = point_direction(x, y, instanceToShoot.x, instanceToShoot.y);
		
		audio_play_sound(element, 2, false);
	
		alarm[0] = fireRate / global.timeScale;
	} else {
		shooting = false;	
	}
}

function updateBullet(){
	image_angle = direction;	
}

function damage(amount){
	enemyHP -= amount;
}


function towerRotate(instance, rotationSpeed){
	if(instance_exists(instance)){
		pointDirection = point_direction(x, y, instance.x, instance.y);
		image_angle += sin(degtorad(pointDirection - image_angle)) * rotationSpeed * global.timeScale;
	}
}

function upgradeTower(cost, tower){
	if(global.coins >= cost){
		instance_create_layer(x, y, "Towers", tower);
		global.coins -= cost;
		instance_destroy();
	}
}