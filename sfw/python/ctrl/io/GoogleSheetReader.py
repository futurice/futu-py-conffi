import utils.Initializer
from utils.Configurator import Configurator
import logging 
import sys    
import os    
import logging
import logging.config
import gspread
from oauth2client.service_account import ServiceAccountCredentials

# 
# responsible for the reading of the data by passed url and worksheet name
# returns the list of lists containing the data 
# src: https://gspread.readthedocs.io/en/latest/#
# src: http://gspread.readthedocs.io/en/latest/oauth2.html
class GoogleSheetReader:


    def doRead ( self , objConfigurator , url , worksheet ):

        objLogger           = objConfigurator.doInitLogger()
        objLogger.disabled  = 0
        appConfig           = objConfigurator.getAppConfig()

        product_name        =  appConfig [ 'ProductName' ]
        product_conf_dir    = appConfig [ 'ProductInstDir' ] + os.sep + 'conf'
        product_key_file    = product_conf_dir + os.sep + 'futu-py-conffi-0fc124bba318.json'

        # 01-eval -- parametrize ?!
        scope = ['https://spreadsheets.google.com/feeds']


        credentials = ServiceAccountCredentials.from_json_keyfile_name(product_key_file, scope)
        gc          = gspread.authorize(credentials)

        objLogger.info ( "url: " + url)
        objLogger.info ( "worksheet: " + worksheet )
        
        objGoogleSpreadSheet    = gc.open_by_url( url ) 
        objWorksheet            = objGoogleSpreadSheet.worksheet( worksheet )
        #debug print ( objGoogleSpreadSheet )

        list_of_lists           = objWorksheet.get_all_values()
        # debug print ( list_of_lists )
        # debug time.sleep ( 3 )

        return list_of_lists
    #eof doRead
