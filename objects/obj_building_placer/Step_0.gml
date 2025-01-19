x = obj_player.x;
y = obj_player.y;

if inv_open && keyboard_check_pressed(vk_escape) {
	visible = 0;
	inv_open = false;
}