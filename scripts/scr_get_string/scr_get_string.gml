function scr_get_string(string_name = "",change_string = ""){
	
	u_string = scr_u_sting();
	if (change_string!=""){
		u_string.u_text = change_string;
	}
	//get_string 获取对应字符串
	switch global.Language{
		case "en":
		default:
			switch string_name{
				case "intro1":
					u_string.u_text =  "Long ago, two races\nruled over Earth:\nHUMANS and MONSTERS.";
					break;
				case "intro2":
					u_string.u_text =  "One day, war broke\nout between the two\nraces.";
					break;
				case "intro3":
					u_string.u_text = "After a long battle,\nthe humans were\nvictorious.";
					break;
				case "intro4":
					u_string.u_text = "They sealed the monsters\nunderground wich a magic\nspell.";
					break;
				case "intro5":
					u_string.u_text = "Many years later.\r\r\r\r\r\r\r\r.\r\r\r\r\r\r\r\r.";
					break;
				case "intro6_1":
					u_string.u_text = "MT. EBOTT";
					break;
				case "intro6_2":
					u_string.u_text = "201X";
					break;
				case "intro7":
					u_string.u_text = "Legends say that thos\nwho climb the mountain\nnever return.";
					break;
				case "title":
					u_string.u_text = "[press z or enter]"
					break;
				case "menu1":
					u_string.u_text = "Name\vthe\vfallen\vhuman."
					break;
				case "menu2":
					u_string.u_text = "Is\vthis\vname\vcorrect?"
					break;
				case "Quit":
					u_string.u_text = "Quit"
					break;
				case "Backspace":
					u_string.u_text = "Backspace"
					break;
				case "Done":
					u_string.u_text = "Done"
					break;
				case "Yes":
					u_string.u_text = "Yes"
					break;
				case "No":
					u_string.u_text = "No"
					break;
				default:
					break;
			}
			break;
	}
	//get_snd 获取对应音效
	switch string_name{
		case "intro1":
		case "intro2":
		case "intro3":
		case "intro4":
		case "intro5":
		case "intro6_1":
		case "intro6_2":
		case "intro7":
			u_string.u_snd = "2";
		default:
			break;
	}
	//get_font 获取对应字体
	switch global.Language{
		case "en":
		default:
			switch string_name{
				case "intro6_1":
				case "intro6_2":
					u_string.u_font = DeterminationMono22;
					break;
				case "title":
					u_string.u_font =MarsNeedsCunnilingus12;
					break;
				case "Quit":
				case "Backspace":
				case "Done":
				case "Yes":
				case "No":
				case "menu1":
				case "menu2":
					u_string.u_font =DeterminationMono20;
					break;
				case "menuName":
					u_string.u_font =DeterminationMono22;
					break;
				default:
					break;
			}
			break;
	}
	//get_delta 获取对应延迟
	switch global.Language{
		case "en":
		default:
			switch string_name{
				default:
					break;
			}
			break;
	}
	
	//get_is_skip 获取是否跳过
	switch string_name{
		case "title":
			u_string.u_is_skip = true;
			break;
		case "Quit":
		case "Backspace":
		case "Done":
		case "Yes":
		case "No":
		case "menu1":
		case "menu2":
		case "menuName":
			u_string.u_is_skip = true;
			break;
		default:
			break;
	}
	
	//get_color 获取对应颜色
	switch string_name{
		case "title":
			u_string.u_col = make_colour_rgb(80,80,80);
			break;
		default:
			break;
	}
	//get_color 获取对应运动方式
	switch string_name{
		case "menuName":
			u_string.motion_state = CHAR_MOTION_STATE.GRADUALLY_GROW_LARGER;
			break;
		default:
			break;
	}
	//get_char_x_offset 获取x偏移
	switch string_name{
		case "menu1":
		case "menu2":
		case "menuName":
			u_string.char_x_offset = -4;
		break;
		default:
			break;
	}
	//get_char_x1_offset 获取x1偏移
	switch string_name{
		case "menu1":
		case "menu2":
		case "menuName":
			u_string.char_x1_offset = 6;
		break;
		default:
			break;
	}
	return u_string;
}