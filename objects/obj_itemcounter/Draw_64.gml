draw_text_transformed(view_xport[0] + 30, view_yport[0] + 30, string_concat("STONE: ", obj_player.stone), 2, 2, 0);
draw_text_transformed(view_xport[0] + 30, view_yport[0] + 60, string_concat("DIDITE: ", obj_player.didite), 2, 2, 0);
draw_text_transformed(view_xport[0] + 1000, view_yport[0] + 30, string_concat("POPULATION: ", string_concat(population, string_concat("/", maxPop))), 2, 2, 0);