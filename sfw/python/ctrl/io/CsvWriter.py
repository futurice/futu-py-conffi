import utils.Initializer
from utils.Configurator import Configurator
import logging 
import sys    
import os    
import csv
import logging
import logging.config
# 
# responsible for the csv writing 
class CsvWriter:


    def doWrite ( self , objConfigurator , list_of_lists , worksheet ):

        objLogger           = objConfigurator.doInitLogger()
        objLogger.disabled  = 0
        appConfig           = objConfigurator.getAppConfig()

        data_out_dir = appConfig [ 'ProductInstDir' ] + os.sep + 'data' + os.sep + 'out'
        out_csv_file = data_out_dir + os.sep + worksheet + '.csv'
        with open(out_csv_file, "w") as f:
            writer = csv.writer(f)
            writer.writerows(list_of_lists )        


        print ( list_of_lists )
        import time
        time.sleep ( 3 )
        return 0
    #eof doRead
