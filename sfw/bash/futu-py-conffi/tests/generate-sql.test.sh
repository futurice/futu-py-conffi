# sfw/bash/futu-py-conffi/funcs/generate-sql.test.sh

# 
# ---------------------------------------------------------
# todo: add doTestGenerateSQL comments ...
# ---------------------------------------------------------
doTestGenerateSQL(){

	doLog "DEBUG START doTestGenerateSQL"
	
	cat docs/txt/futu-py-conffi/tests/generate-sql.test.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!
   bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a generate-sql

	doLog "DEBUG STOP  doTestGenerateSQL"
}
# eof func doTestGenerateSQL


# eof file: sfw/bash/futu-py-conffi/funcs/generate-sql.test.sh
