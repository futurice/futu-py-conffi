# sfw/bash/futu-py-conffi/funcs/fail-run-python.help.sh

# 
# ---------------------------------------------------------
# todo: add doHelpFailRunPython comments ...
# ---------------------------------------------------------
doHelpFailRunPython(){

	doLog "DEBUG START doHelpFailRunPython"
	
	cat docs/txt/futu-py-conffi/helps/fail-run-python.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpFailRunPython"
}
# eof func doHelpFailRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/fail-run-python.help.sh
