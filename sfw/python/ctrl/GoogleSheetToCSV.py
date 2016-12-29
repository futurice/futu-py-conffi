import logging 
import sys    
import os    
import logging
import logging.config
import utils.Initializer
from .io.GoogleSheetReader import GoogleSheetReader
from .io.CsvWriter import CsvWriter
from utils.Configurator import Configurator

# this is the controller class responsible for the control flow of reading 
# the Google Spread Sheet , mangling the result set and writing the conf files
class GoogleSheetToCSV:

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
        
        # data mangling here ?!
        # eval-1

        objCsvWriter = CsvWriter()
        list_of_lists = objCsvWriter.doWrite ( objConfigurator , list_of_lists , worksheet )


        return 0    
    #eof main
