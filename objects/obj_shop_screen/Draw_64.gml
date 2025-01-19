if obj_shop.shopOpen {
	draw_sprite(spr_drill_blueprint, 1, obj_player.x - 600, obj_player.y - 100);
	draw_sprite(spr_farm_blueprint, 1, obj_player.x - 600, obj_player.y - 50);
	draw_sprite(spr_mine_blueprint, 1, obj_player.x - 600, obj_player.y);
	draw_sprite(spr_house_blueprint, 1, obj_player.x - 600, obj_player.y + 50);
	
	draw_text(obj_player.x - 580, obj_player.y - 110, "A drill to access groundwater. Cost: 2 didite 7 stone. Press 1 to buy");
	draw_text(obj_player.x - 580, obj_player.y - 60, "A farm to produce food. Cost: 13 stone. Press 2 to buy");
	draw_text(obj_player.x - 580, obj_player.y - 10, "A mine to produce stones and minerals. Cost: 2 didite 5 stone. Press 3 to buy");
	draw_text(obj_player.x - 580, obj_player.y + 40, "A house to provide shelter for space colonists. Cost: 4 didite 10 stone. Press 4 to buy");
	
	if drill_bought >= 3 {
		draw_text(obj_player.x + 300, obj_player.y - 110, "Sold out");
	}  else {
		draw_text(obj_player.x + 220, obj_player.y  - 110, string_concat("Bought: ", drill_bought, " Owned: ", obj_player.hasDrillBP));
	}
	
	if farm_bought >= 3{
		draw_text(obj_player.x + 300, obj_player.y - 60, "Sold out");
	}  else {
		draw_text(obj_player.x + 220, obj_player.y  - 60, string_concat("Bought: ", farm_bought, " Owned: ", obj_player.hasFarmBP));
	}
	
	if mine_bought >= 3 {
		draw_text(obj_player.x + 300, obj_player.y -10, "Sold out");
	} else {
		draw_text(obj_player.x + 220, obj_player.y  -10, string_concat("Bought: ", mine_bought, " Owned: ", obj_player.hasMineBP));
	}
	
	if houses_bought >= 6 {
		draw_text(obj_player.x + 300, obj_player.y  + 40, "Sold out");
	} else {
		draw_text(obj_player.x + 220, obj_player.y  + 40, string_concat("Bought: ", houses_bought, " Owned: ", obj_player.houseBPs));
	}
}