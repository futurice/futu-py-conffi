import utils.Initializer
from utils.Configurator import Configurator
from .io.GoogleSheetReader import GoogleSheetReader
import logging 
import sys    
import os    
import logging
import logging.config

# this is the controller class responsible for the control flow of reading 
# the Google Spread Sheet , mangling the result set and writing the conf files
class GoogleSheetToYAML:

    def main( self , objConfigurator , url , worksheet ):

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

        product_name =  appConfig [ 'ProductName' ]

        product_conf_dir = appConfig [ 'ProductInstDir' ] + os.sep + 'conf'

        # todo: parametrize into conf file 
        product_key_file = product_conf_dir + os.sep + 'futu-py-conffi-0fc124bba318.json'

        objGoogleSheetReader = GoogleSheetReader()
        list_of_lists = objGoogleSheetReader.doRead( objConfigurator , url , worksheet )

        print ( list_of_lists )
        time.sleep ( 3 )

        return 0    
    #eof main
