# sfw/bash/futu-py-conffi/funcs/run-python.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestRunPython comments ...
# ---------------------------------------------------------
doTestRunPython(){

	doLog "DEBUG START doTestRunPython"
	
	cat docs/txt/futu-py-conffi/tests/run-python.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a run-python

	doLog "DEBUG STOP  doTestRunPython"
}
# eof func doTestRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/run-python.test.sh
