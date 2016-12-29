# sfw/bash/futu-py-conffi/funcs/backup-file.help.sh

# 
# ---------------------------------------------------------
# todo: add doHelpBackupFile comments ...
# ---------------------------------------------------------
doHelpBackupFile(){

	doLog "DEBUG START doHelpBackupFile"
	
	cat docs/txt/futu-py-conffi/helps/backup-file.help.txt
	
	test -z "$sleep_interval" || sleep "$sleep_interval"
	# add your action implementation code here ... 
	# Action !!!

	doLog "DEBUG STOP  doHelpBackupFile"
}
# eof func doHelpBackupFile


# eof file: sfw/bash/futu-py-conffi/funcs/backup-file.help.sh
