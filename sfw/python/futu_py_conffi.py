#!/usr/bin/env python3

import utils.Initializer
import logging 
import sys    
import os    
import logging
import logging.config


def main():
    product_name = os.path.basename(sys.argv[0]) 
    print ( "=== START === " + product_name )

    objLogger = doInitLogger()
    objLogger.info ( "=== START  ===  " + product_name )
    # "application" code
    objLogger.debug("debug message")
    objLogger.info("info message")
    objLogger.warning("warn message")
    objLogger.error("error message")
    objLogger.critical("critical message")
    
    objLogger.info ( utils.Initializer.doResolveScriptFile() )
    objLogger.info ( utils.Initializer.doResolveProductInstanceDir() )
    objLogger.info ( utils.Initializer.doResolveTheConfigFile() )

    objLogger.info ( "=== STOP  ===  " + product_name )

    exit ( 0 )
#eof main


# initialize a logger
# src: https://docs.python.org/3.1/library/logging.html
def doInitLogger():

    product_name = os.path.basename(sys.argv[0]) 

    # logging_conf_file = utils.Initializer.doResolveProductInstanceDir() + "/conf/logging.conf"
    product_inst_dir = utils.Initializer.doResolveProductInstanceDir()
    logging_conf_file = product_inst_dir + '/conf/logging.conf'
    logging.config.fileConfig(logging_conf_file)
    
    # create logger
    objLogger = logging.getLogger( product_name )

    return objLogger
#eof def doInitLogger

# Action !!!
main()
