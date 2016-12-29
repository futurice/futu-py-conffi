#!/usr/bin/env python3

import utils.CmdArgsParser
import  utils.Initializer 
from utils.Configurator import Configurator
from ctrl.GoogleSheetToYAML import GoogleSheetToYAML
import sys    
import os    
import logging
import logging.config
import time

from pprint import pprint


# this is the main entry point of the tool
def main():

  
    objConfigurator = Configurator()
    objConfigurator.doInitGlobals()

    # debug pprint (vars( objConfigurator ))
    # time.sleep ( 3 )

    objLogger = objConfigurator.doInitLogger()
    appConfig = objConfigurator.getAppConfig()
    product_name = appConfig [ 'ProductName' ]
    objLogger.info ( "START ::: " + product_name )
    
    args = utils.CmdArgsParser.doParse()

    url = args[ 'url' ]
    worksheet = args[ 'worksheet' ]
    
    
    objGoogleSheetToYAML = GoogleSheetToYAML()
    ret = objGoogleSheetToYAML.main( objConfigurator , url , worksheet )


    objLogger.info ( "STOP  ::: " + product_name )
    exit ( ret )

#eof main


# Action !!!
main()
