# sfw/bash/futu-py-conffi/funcs/fail-run-python.test.sh

# v0.1.4
# ---------------------------------------------------------k
# test all the possible wrong ways of calling the python script
# ---------------------------------------------------------
doTestFailRunPython(){

	doLog "DEBUG START doTestFailRunPython"
	
	cat docs/txt/futu-py-conffi/tests/fail-run-python.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"

	# add your action implementation code here ... 
	# Action !!!
	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a "fail-run-python"
	doLog "DEBUG STOP  doTestFailRunPython"
}
# eof func doTestFailRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/fail-run-python.test.sh
