if abs(obj_player.x - x) < 50 && abs(obj_player.y - y) < 50 && keyboard_check_pressed(ord("E")) {
	if level == 1 && obj_player.stone >= 20 && obj_player.didite >= 4 {
		level = 2;
		obj_itemcounter.population += 2;
	}
	
	if level == 2 && obj_player.stone >= 75 && obj_player.didite >= 10 {
		level = 3;
		obj_itemcounter.population += 2;
	}
}