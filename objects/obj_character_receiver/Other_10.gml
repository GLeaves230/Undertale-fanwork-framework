if (receive_event_name=="Backspace"){
	if (receive_text!=""){
		receive_text = string_delete(receive_text,string_byte_length(receive_text),1);
	}
}
receive_event_name = "";