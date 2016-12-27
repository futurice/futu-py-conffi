# sfw/bash/futu-py-conffi/funcs/check-python-syntax.spec.sh

# v1.0.9
# ---------------------------------------------------------
# todo: add doSpecCheckPythonSyntax comments ...
# ---------------------------------------------------------
doSpecCheckPythonSyntax(){

	doLog "DEBUG START doSpecCheckPythonSyntax"
	
	cat docs/txt/futu-py-conffi/specs/check-python-syntax.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecCheckPythonSyntax"
}
# eof func doSpecCheckPythonSyntax


# eof file: sfw/bash/futu-py-conffi/funcs/check-python-syntax.spec.sh
