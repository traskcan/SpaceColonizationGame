x = obj_player.x;
y = obj_player.y;

if obj_shop.shopOpen {
	visible = 1;
	
	if keyboard_check_pressed(ord("1")) {
		if drill_bought < 3 {
			if obj_player.didite >= 2 && obj_player.stone >= 7 {
				obj_player.hasDrillBP++;
				drill_bought++;
				obj_player.didite -= 2;
				obj_player.stone -= 7;
			}
		}
	}
	
	if keyboard_check_pressed(ord("2")) {
		if farm_bought < 3{
			if obj_player.stone >= 13 {
				obj_player.hasFarmBP++;
				farm_bought++;
				obj_player.stone -= 13;
			}
		}
	}
	
	if keyboard_check_pressed(ord("3")) {
		if mine_bought < 3 {
			if obj_player.didite >= 2 && obj_player.stone >= 5 {
				obj_player.hasMineBP++;
				mine_bought++;
				obj_player.didite -= 2;
				obj_player.stone -= 5;
			}
		}
	}
	
	if keyboard_check_pressed(ord("4")) {
		if houses_bought < 6 {
			if obj_player.didite >= 4 && obj_player.stone >= 10 {
				obj_player.houseBPs++;
				houses_bought++;
				obj_player.didite -= 4;
				obj_player.stone -= 10;
			}
		}
	}
} else {
	visible = 0;
}