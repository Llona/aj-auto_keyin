/*
Ver 0.1 - First version
Ver 0.2 - Add clipwait for ensure clipboard has correct string
*/
;-------------------------------------------------------------
SoftVersion := "Ver 0.2"

;MsgBox, The value is %IniVar%.

send_clip_board(str)
{
	ori_text = %clipboard%
	clipboard = %str%
	sleep, 100
	ClipWait
	if ErrorLevel
	{
		MsgBox, error, 錯誤! 字串複製失敗!
		return
	}
	send ^v
	
	clipboard = %ori_text%
	sleep, 100
	ClipWait
	if ErrorLevel
	{
		MsgBox, 錯誤! 回復剪貼簿內容失敗!
		return
	}
}

#f1::
	IniRead, IniVar, keyin.ini, Win, f1
	send_clip_board(IniVar)
	return

#f2::
	IniRead, IniVar, keyin.ini, Win, f2
	send_clip_board(IniVar)
	return

#f3::
	IniRead, IniVar, keyin.ini, Win, f3
	send_clip_board(IniVar)
	return

#f4::
	IniRead, IniVar, keyin.ini, Win, f4
	send_clip_board(IniVar)
	return

#f5::
	IniRead, IniVar, keyin.ini, Win, f5
	send_clip_board(IniVar)
	return

#f6::
	IniRead, IniVar, keyin.ini, Win, f6
	send_clip_board(IniVar)
	return

#f7::
	IniRead, IniVar, keyin.ini, Win, f7
	send_clip_board(IniVar)
	return

#f8::
	IniRead, IniVar, keyin.ini, Win, f8
	send_clip_board(IniVar)
	return

#f9::
	IniRead, IniVar, keyin.ini, Win, f9
	send_clip_board(IniVar)
	return

#f10::
	IniRead, IniVar, keyin.ini, Win, f10
	send_clip_board(IniVar)
	return

#f11::
	IniRead, IniVar, keyin.ini, Win, f11
	send_clip_board(IniVar)
	return

#f12::
	IniRead, IniVar, keyin.ini, Win, f12
	send_clip_board(IniVar)
	return


;---------------------------------------------------------------
^r::
	reload
	return
^q::
	ExitApp
^e::
	Exit
^t::
	MsgBox 0,版本,%SoftVersion%
	



