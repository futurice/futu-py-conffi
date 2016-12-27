#!/bin/bash 

#v1.1.0
#------------------------------------------------------------------------------
# tests the full package creation
#------------------------------------------------------------------------------
doTestCreateFullPackage(){
	cd $product_version_dir
	doLog " INFO START : create-full-package.test"
	
	cat docs/txt/futu-py-conffi/tests/pckg/create-full-package.test.txt

	doSpecCreateFullPackage

	doHelpCreateFullPackage

	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a create-full-package
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"

	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a create-full-package -i $product_version_dir/meta/.tst.futu-py-conffi
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"
	
	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a create-full-package -i $product_version_dir/meta/.prd.futu-py-conffi
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"
	
	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a create-full-package -i $product_version_dir/meta/.git.futu-py-conffi
	test -z "$sleep_interval" || sleep "$sleep_interval"
   printf "\033[2J";printf "\033[0;0H"

	doLog " INFO STOP  : create-full-package.test"
}
#eof test doCreateFullPackage
