if inv_open {
	draw_text(obj_player.x - 580, obj_player.y - 110, "Press 1 to place");
	draw_text(obj_player.x - 580, obj_player.y - 60, "Press 2 to place");
	draw_text(obj_player.x - 580, obj_player.y - 10, "Press 3 to place");
	draw_text(obj_player.x - 580, obj_player.y + 40, "Press 4 to place");
	
	draw_text(obj_player.x + 200, obj_player.y - 110, string_concat("Owned: ", obj_player.hasDrillBP));
	
	draw_text(obj_player.x + 200, obj_player.y - 60, string_concat("Owned: ", obj_player.hasFarmBP));
	
	draw_text(obj_player.x + 200, obj_player.y - 10, string_concat("Owned: ", obj_player.hasMineBP));
	
	draw_text(obj_player.x + 200, obj_player.y + 40, string_concat("Owned: ", obj_player.houseBPs));
}