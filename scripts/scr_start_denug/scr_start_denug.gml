function scr_start_denug(is_debug = false){
	if (is_debug){
		if (global.debug==noone){
			global.debug = instance_create_depth(0,0,999999,obj_debug);
			global.debug.persistent = true;
		}
	}
}