# sfw/bash/futu-py-conffi/funcs/fail-run-python.func.sh

# 
# ---------------------------------------------------------
# todo: add doFailRunPython comments ...
# ---------------------------------------------------------
doFailRunPython(){

	doLog "INFO START doFailRunPython"
	
	cat docs/txt/futu-py-conffi/funcs/fail-run-python.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action impljmentation code here ... 
	# Action !!!
   doLog "START call only with url"
	python3 -W all sfw/python/futu_py_conffi.py --url "$url"
   doLog "STOP  call only with url"

   doLog "START call only with worksheet"
	python3 -W all sfw/python/futu_py_conffi.py --worksheet "$worksheet"
   doLog "STOP  call only with worksheet"
   
   doLog "START call without cmd args"
   python3 -W all sfw/python/futu_py_conffi.py
   doLog "STOP  call without cmd args"

	doLog "INFO STOP  doFailRunPython"
}
# eof func doFailRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/fail-run-python.func.sh
