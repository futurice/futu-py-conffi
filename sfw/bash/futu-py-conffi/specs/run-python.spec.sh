# sfw/bash/futu-py-conffi/funcs/run-python.spec.sh

# 
# ---------------------------------------------------------
# todo: add doSpecRunPython comments ...
# ---------------------------------------------------------
doSpecRunPython(){

	doLog "DEBUG START doSpecRunPython"
	
	cat docs/txt/futu-py-conffi/specs/run-python.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecRunPython"
}
# eof func doSpecRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/run-python.spec.sh
