if abs(obj_player.x - x) < 50 && abs(obj_player.y - y) < 50 && keyboard_check_pressed(ord("E")) {
	if level == 1 && obj_player.stone >= 40 && obj_player.didite >= 8 {
		level = 2;
		stone_production = 10;
		didite_p = 3;
		
		obj_player.stone -= 40;
		obj_player.didite -= 8;
	}
	
	if level == 2 && obj_player.stone >= 100 && obj_player.didite >= 20 {
		level = 3;
		stone_production = 15;
		didite_p = 5;
	}
}