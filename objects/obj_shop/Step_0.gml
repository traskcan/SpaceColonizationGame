if abs(obj_player.x - x) < 50 && abs(obj_player.y - y) < 50 && keyboard_check_pressed(ord("E")) {
	shopOpen = true;
}

if shopOpen && keyboard_check_pressed(vk_escape) {
	shopOpen = false;
}

if !shopOpen && !obj_building_placer.inv_open {
	if keyboard_check_pressed(vk_space) {
		obj_building_placer.visible = 1;
		obj_building_placer.inv_open = true;
	}
}