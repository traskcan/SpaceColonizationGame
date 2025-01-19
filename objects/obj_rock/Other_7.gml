
image_speed = 0;

stoneChance = irandom_range(0, 3);

if stoneChance == 0 || stoneChance == 1 {
	for (var i = 0; i < 2; i++) {
		instance_create_layer(x + irandom_range(-30, 30), y + irandom_range(-30, 30), layer, obj_item_rock);
	}
} else if stoneChance == 2 {
	instance_create_layer(x + irandom_range(-30, 30), y + irandom_range(-30, 30), layer, obj_item_rock);
} else {
	for (var i = 0; i < 3; i++) {
		instance_create_layer(x + irandom_range(-30, 30), y + irandom_range(-30, 30), layer, obj_item_rock);
	}
}

diditeChance = irandom_range(0, 2);

if diditeChance == 0 {
	instance_create_layer(x + irandom_range(-30, 30), y + irandom_range(-30, 30), layer, obj_item_didite);
}

instance_destroy();