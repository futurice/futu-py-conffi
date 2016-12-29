# sfw/bash/futu-py-conffi/funcs/run-python.func.sh

# 
# ---------------------------------------------------------
# todo: add doRunPython comments ...
# ---------------------------------------------------------
doRunPython(){

	doLog "DEBUG START doRunPython"
	
	cat docs/txt/futu-py-conffi/funcs/run-python.func.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"

	doLog "DEBUG url : $url"
	doLog "DEBUG worksheet: $worksheet"
	# Action !!! with all warnings 
	python3 -W all sfw/python/futu_py_conffi.py --url $url --worksheet $worksheet
	
	doLog "DEBUG STOP  doRunPython"
}
# eof func doRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/run-python.func.sh
