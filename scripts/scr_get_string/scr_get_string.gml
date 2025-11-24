function scr_get_string(string_name = ""){
	
	u_string = {
	}
	u_string.u_text = "Error!";
	u_string.u_delta = 3;
	u_string.u_font = DeterminationMono18;
	u_string.u_snd = "1";

	//get_string 获取对应字符串
	switch global.Language{
		case "en":
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
				default:
					break;
			}
		default:
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
		case "intro8":
		case "intro9":
		case "intro10":
		case "intro11":
			u_string.u_snd = "2";
		default:
			break;
	}
	//get_font 获取对应字体
	switch global.Language{
		case "en":
			switch string_name{
				case "intro6_1":
				case "intro6_2":
					u_string.u_font = DeterminationMono22;
					break;
				default:
					break;
			}
		default:
			break;
	}
	//get_delta 获取对应延迟
	switch global.Language{
		case "en":
			switch string_name{
				default:
					break;
			}
		default:
			break;
	}
	return u_string;
}