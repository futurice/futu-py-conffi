# sfw/bash/futu-py-conffi/funcs/tmux-common.help.sh

# 
# ---------------------------------------------------------
# todo: add doHelpTmuxCommon comments ...
# ---------------------------------------------------------
doHelpTmuxCommon(){

	doLog "DEBUG START doHelpTmuxCommon"
	
	cat docs/txt/futu-py-conffi/helps/tmux-common.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpTmuxCommon"
}
# eof func doHelpTmuxCommon


# eof file: sfw/bash/futu-py-conffi/funcs/tmux-common.help.sh
