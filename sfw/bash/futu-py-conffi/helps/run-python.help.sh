# sfw/bash/futu-py-conffi/funcs/run-python.help.sh

# 
# ---------------------------------------------------------
# todo: add doHelpRunPython comments ...
# ---------------------------------------------------------
doHelpRunPython(){

	doLog "DEBUG START doHelpRunPython"
	
	cat docs/txt/futu-py-conffi/helps/run-python.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpRunPython"
}
# eof func doHelpRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/run-python.help.sh
