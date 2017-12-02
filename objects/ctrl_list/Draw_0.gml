for (var i = 0; i < ds_list_size(items); i++)
{
	var item = ds_list_find_value(items,i);
	draw_set_color(c_white);
	draw_sprite(item[0], 0, 50 + (i*50), 20);
	draw_sprite(spr_tick, 0, 50 + (i*50), 52);
}