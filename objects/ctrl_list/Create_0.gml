size = 5;
items = ds_list_create();
collected = ds_list_create();
nextItem = "";

var item0 = ["item0", spr_item0];
var item1 = ["item1", spr_item1];
var item2 = ["item2", spr_item2];

// Create a random list of 5 items
for (var i = 0; i < size; i++)
{
	var item = choose(item0, item1, item2);
	ds_list_add(items, item);
}

nextItem = ds_list_find_value(items, 0);
nextItem = nextItem[0];