draw_set_color(c_white);

for (var i = 0; i < ds_list_size(items); i++)
{
	var item = ds_list_find_value(items,i);
	draw_sprite(item[1], 0, 50 + (i*50), 20);
	//draw_text(50 + (i*50), 50, string(item[0]));
	
	var collectedItem = ds_list_find_value(collected,i);
	if collectedItem == item[0]
	{
		draw_sprite(spr_tick, 0, 50 + (i*50), 52);
	}
}

//draw_set_color(c_white);
//draw_text(50, 100, nextItem);


var collectedSize = ds_list_size(collected);

if (collectedSize < ds_list_size(items))
{
	nextItem = ds_list_find_value(items, collectedSize);
	nextItem = nextItem[0];
}