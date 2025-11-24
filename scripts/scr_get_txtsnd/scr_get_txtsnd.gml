function scr_get_txtsnd(snd_name = ""){
	snd_name = string_lower(snd_name)
	var the_id = 0;
	switch snd_name{
		case "flowey1":
			return snd_floweytalk1;
		case "flowey2":
			return snd_floweytalk2;
		case "2":
			return SND_TXT2;
		case "al":
			return snd_txtal;
		case "asg":
			return snd_txtasg;
		case "asr":
			return snd_txtasr;
		case "asr2":
			return snd_txtasr2;
		case "tor":
			return snd_txttor;
		case "tor2":
			return snd_txttor2;
		case "tor3":
			return snd_txttor3;
		case "und":
			return snd_txtund;
		case "und_hyper":
			return snd_txtund_hyper;
		case "und2":
			return snd_txtund2;
		case "und3":
			return snd_txtund3;
		case "und4":
			return snd_txtund4;
		case "sans":
			return snd_txtsans;
		case "sans2":
			return snd_txtsans2;
		case "pap":
			return snd_txtpap;
		case "mtt":
			the_id = int64(random(9));
			switch the_id{
				case 0:
					return snd_mtt1
				case 1:
					return snd_mtt2
				case 2:
					return snd_mtt3
				case 3:
					return snd_mtt4
				case 4:
					return snd_mtt5
				case 5:
					return snd_mtt6
				case 6:
					return snd_mtt7
				case 7:
					return snd_mtt8
				case 8:
					return snd_mtt9
			}
		case "wngdng":
			the_id = int64(random(7));
			switch the_id{
				case 0:
					return snd_wngdng1
				case 1:
					return snd_wngdng2
				case 2:
					return snd_wngdng3
				case 3:
					return snd_wngdng4
				case 4:
					return snd_wngdng5
				case 5:
					return snd_wngdng6
				case 6:
					return snd_wngdng7
			}
		default:
			return SND_TXT1;
	}
}