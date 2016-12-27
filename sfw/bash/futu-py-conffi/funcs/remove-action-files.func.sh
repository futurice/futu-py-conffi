# sfw/bash/futu-py-conffi/funcs/remove-action-files.func.sh

# v1.1.2
# ---------------------------------------------------------
# obs we assume that the caller is in the product_version_dir
# simply delete each file which greps finds to match to the action
# name(s) configured in the : 
# sfw/bash/futu-py-conffi/tests/rem-futu-py-conffi-actions.lst
# list file
# ---------------------------------------------------------
doRemoveActionFiles(){

	doLog "DEBUG START doRemoveActionFiles"
	
	
	# for each defined action 	
	while read -r act ; do (
		
		doLog "INFO STOP  :: removing action: $act"
		find . | grep $act | cut -c 3- | xargs rm -fv "{}"
		
	); 
	done< <(cat "sfw/bash/futu-py-conffi/tests/rem-futu-py-conffi-actions.lst")

	doLog "DEBUG STOP  doRemoveActionFiles"
}
# eof func doRemoveActionFiles


# eof file: sfw/bash/futu-py-conffi/funcs/remove-action-files.func.sh
