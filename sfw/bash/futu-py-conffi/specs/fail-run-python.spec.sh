# sfw/bash/futu-py-conffi/funcs/fail-run-python.spec.sh

# 
# ---------------------------------------------------------
# todo: add doSpecFailRunPython comments ...
# ---------------------------------------------------------
doSpecFailRunPython(){

	doLog "DEBUG START doSpecFailRunPython"
	
	cat docs/txt/futu-py-conffi/specs/fail-run-python.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecFailRunPython"
}
# eof func doSpecFailRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/fail-run-python.spec.sh
