if !obj_building_placer.inv_open {
	if keyboard_check_pressed(ord("1")) {
		if obj_player.hasDrillBP > 0 {
			instance_create_depth(obj_player.x, obj_player.y - 60, 10, obj_drill);
			obj_player.hasDrillBP--;
		}
	}
	
	if keyboard_check_pressed(ord("2")) {
		if obj_player.hasFarmBP > 0 {
			instance_create_depth(obj_player.x, obj_player.y - 60, 10, obj_farm);
			obj_player.hasFarmBP--;
		}
	}
	
	if keyboard_check_pressed(ord("3")) {
		if obj_player.hasMineBP > 0 {
			instance_create_depth(obj_player.x, obj_player.y - 60, 10, obj_mine);
			obj_player.hasMineBP--;
		}
	}
	
	if keyboard_check_pressed(ord("4")) {
		if obj_player.houseBPs > 0 {
			instance_create_depth(obj_player.x, obj_player.y - 60, 10, obj_house);
			obj_player.houseBPs--;
		}
	}
}