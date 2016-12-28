import utils.Initializer
from utils.Configurator import Configurator
import logging 
import sys    
import os    
import logging
import logging.config

# this is the controller class responsible for the control flow of reading 
# the Google Spread Sheet , mangling the result set and writing the conf files
class GoogleSheetToYAML:

    def main( self , objConfigurator ):

        objLogger = objConfigurator.doInitLogger()
        objLogger.disabled = 0
        appConfig = objConfigurator.getAppConfig()
        product_name =  appConfig [ 'ProductName' ]
        objLogger.debug("debug message")
        objLogger.info("info message")
        objLogger.warning("warn message")
        objLogger.error("error message")
        objLogger.critical("critical message")
        
        objLogger.info ( "logging_conf_file: " + appConfig['LoggingConfFile'] )

        return 0    
    #eof main
