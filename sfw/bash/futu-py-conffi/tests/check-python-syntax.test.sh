# sfw/bash/futu-py-conffi/funcs/check-python-syntax.test.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doTestCheckPythonSyntax comments ...
# ---------------------------------------------------------
doTestCheckPythonSyntax(){

	doLog "DEBUG START doTestCheckPythonSyntax"
	
	cat docs/txt/futu-py-conffi/tests/check-python-syntax.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a check-python-syntax

	doLog "DEBUG STOP  doTestCheckPythonSyntax"
}
# eof func doTestCheckPythonSyntax


# eof file: sfw/bash/futu-py-conffi/funcs/check-python-syntax.test.sh
