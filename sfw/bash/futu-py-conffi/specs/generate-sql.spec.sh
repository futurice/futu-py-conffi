# sfw/bash/futu-py-conffi/funcs/generate-sql.spec.sh

# 
# ---------------------------------------------------------
# todo: add doSpecGenerateSQL comments ...
# ---------------------------------------------------------
doSpecGenerateSQL(){

	doLog "DEBUG START doSpecGenerateSQL"
	
	cat docs/txt/futu-py-conffi/specs/generate-sql.spec.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doSpecGenerateSQL"
}
# eof func doSpecGenerateSQL


# eof file: sfw/bash/futu-py-conffi/funcs/generate-sql.spec.sh
