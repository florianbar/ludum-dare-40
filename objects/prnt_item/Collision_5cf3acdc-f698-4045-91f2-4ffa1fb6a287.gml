if obj_player.canCollect and instance_exists(ctrl_list) 
{
	if itemName == ctrl_list.nextItem
	{
		ds_list_add(ctrl_list.collected, itemName);	 
		instance_destroy();
	}
}