# sfw/bash/futu-py-conffi/funcs/run-python.test.sh

# 
# ---------------------------------------------------------
# todo: add doTestRunPython comments ...
# ---------------------------------------------------------
doTestRunPython(){

	doLog "DEBUG START doTestRunPython"
	
	cat docs/txt/futu-py-conffi/tests/run-python.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"

	url='https://docs.google.com/spreadsheets/d/1QaCz_ef9-7ipL2vtN-yN8PBtWNewPKA25bRDXuTs0d0/edit'
	worksheet='kiky-confs'
	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a "run-python" -u $url -w $worksheet
	
doLog "DEBUG STOP  doTestRunPython"
}
# eof func doTestRunPython


# eof file: sfw/bash/futu-py-conffi/funcs/run-python.test.sh
