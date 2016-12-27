# sfw/bash/futu-py-conffi/funcs/run-python.func.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doRunPython comments ...
# ---------------------------------------------------------
doRunPython(){

	doLog "DEBUG START doRunPython"
	
	cat docs/txt/futu-py-conffi/funcs/run-python.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doRunPython"
}
# eof func doRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/run-python.func.sh
