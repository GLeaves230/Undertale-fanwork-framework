global.is_Init = false;
global.Language = "en";
global.debug = noone;
enum CHAR_MOTION_STATE{
	NORMAL = 0,
	JITTER = 1,
	GRADUALLY_GROW_LARGER = 2,
}
//读取存档
scr_start_denug(true);
room_goto(room_intro);