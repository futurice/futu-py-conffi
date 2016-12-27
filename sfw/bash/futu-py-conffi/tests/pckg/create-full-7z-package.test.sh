# sfw/bash/futu-py-conffi/funcs/create-full-7z-package.test.sh

# v1.1.0
# ---------------------------------------------------------
# todo: add doTestCreateFull7zPackage comments ...
# ---------------------------------------------------------
doTestCreateFull7zPackage(){

	doLog "DEBUG START doTestCreateFull7zPackage"
	
	cat docs/txt/futu-py-conffi/tests/pckg/create-full-7z-package.test.txt
	
	doSpecCreateFull7zPackage
	doHelpCreateFull7zPackage

	# add your action implementation code here ... 
	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a create-full-7z-package

	doLog "DEBUG STOP  doTestCreateFull7zPackage"
}
# eof func doTestCreateFull7zPackage


# eof file: sfw/bash/futu-py-conffi/funcs/create-full-7z-package.test.sh
