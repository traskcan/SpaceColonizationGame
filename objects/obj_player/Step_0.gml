//Movement and action keys
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));
leftKey = keyboard_check(ord("A"));
rightKey = keyboard_check(ord("D"));
mineKey = keyboard_check_pressed(ord("Q"));

//Update cardinal speeds
xspd = (rightKey - leftKey) * walkSpeed;
yspd = (downKey - upKey) * walkSpeed;

//Recognized barrier objects
if (place_meeting(x + xspd, y, obj_shrub)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_shrub) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_cactus)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_cactus) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_rock)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_rock) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_shop)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_shop) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_drill)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_drill) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_farm)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_farm) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_mineshaft)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_mineshaft) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_house)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_house) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_border_rock)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_border_rock) {
	yspd = 0;	
}

if (place_meeting(x + xspd, y, obj_spaceship)) {
	xspd = 0;	
}

if place_meeting(x, y + yspd, obj_spaceship) {
	yspd = 0;	
}

//Update position
x += xspd;
y += yspd;

//Update sprite based on direction
if (xspd > 0) {
	dir = 1;
	sprite_index = spr_player_right_run;
} else if (xspd < 0) {
	dir = 3;
	sprite_index = spr_player_left_run;
}

if (yspd < 0) {
	dir = 4;
	sprite_index = spr_player_back_run;
} else if (yspd > 0) {
	dir = 2;
	sprite_index = spr_player_front_run;
}

//Mine ability to break rocks
if mineKey && canMine {
	obj_player.visible = 0;
	instance_create_layer(x, y, layer, obj_mine);
	//Cooldown alarm for ability
	alarm[1] = 8;
	canMine = false;
}

//Update idle sprites based on last run direction
if (xspd == 0 && yspd == 0) {
	if (dir == 1) {
		sprite_index = spr_player_right_idle;
	} else if (dir == 2) {
		sprite_index = spr_player_front_idle;	
	} else if (dir == 3) {
		sprite_index = spr_player_left_idle;	
	} else if (dir = 4) {
		sprite_index = spr_player_back_idle;	
	}
}