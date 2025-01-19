if abs(obj_player.x - x) < 50 && abs(obj_player.y - y) < 50 && keyboard_check_pressed(ord("E")) {
	if level == 1 && obj_player.stone >= 30 && obj_player.didite >= 7 {
		level = 2;
		obj_itemcounter.maxPop += 2
	}

	if level == 2 && obj_player.stone >= 65 && obj_player.didite >= 15 {
		level = 3;
		obj_itemcounter.maxPop += 2
	}
}