#!/bin/bash 

#v1.0.6
#------------------------------------------------------------------------------
# creates the relative package as component of larger product platform
#------------------------------------------------------------------------------
doTestCreateRelative7zPackage(){
	doLog " INFO START : create-relative-7z-package.test"
	
	cat sfw/bash/futu-py-conffi/tests/create-relative-7z-package.test.sh

	bash sfw/bash/futu-py-conffi/futu-py-conffi.sh -a create-relative-7z-package	
	doLog " INFO STOP  : create-relative-7z-package.test"
	
	
}
#eof test doCreaterelative7zPackage

