#!/usr/bin/env python3

import utils.Initializer

def main():
    print ( "=== START === futu-py-conffi.py" )
    
    print ( utils.Initializer.doResolveScriptFile() )
    print ( utils.Initializer.doResolveProductInstanceDir() )
    print ( utils.Initializer.doResolveTheConfigFile() )

    print ( "=== STOP  ===  futu-py-conffi.py" )

    exit ( 0 )
#eof main


main()
