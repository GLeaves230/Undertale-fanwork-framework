if (motion_state==CHAR_MOTION_STATE.JITTER||motion_state==CHAR_MOTION_STATE.GRADUALLY_GROW_LARGER){
	x1 = random_range(-1,1);
	y1 = random_range(-1,1);
}
switch (motion_state){
	case CHAR_MOTION_STATE.GRADUALLY_GROW_LARGER:
		gradually_grow_larger_time++;
		if (gradually_grow_larger_time>=140){
			gradually_grow_larger_time = 140;
		}
		break;
	default:
		break;
}