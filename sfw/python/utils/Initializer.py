import inspect
import os

# todo: pacckages
# src: https://python4astronomers.github.io/installation/packages.html
# 
def doResolveScriptFile():

    return os.path.abspath( inspect.stack()[0][1] )
#eof doResolveScriptDir


#
# splits the absolute path of the main script into tokens
# remove the last 3 tokens 
# and concatenates back into the <<product-instance-dir>>
def doResolveProductInstanceDir():

    abs_path = os.path.abspath( inspect.stack()[0][1] )
    path_list = abs_path.split(os.sep)
    del path_list[-3:]
    ProductInstDir = ''
  

    for token in path_list[1:]:
        ProductInstDir = ProductInstDir + os.sep + token

    return ProductInstDir
#eof doResolveScriptDir


def doResolveTheConfigFile():

    ProductInstDir = doResolveProductInstanceDir()
    # todo: parametrize the futu-py-conffi
    ConfigFile = ProductInstDir + os.sep + 'conf' + os.sep + 'futu-py-conffi.yaml'
    return ConfigFile

#eof def doResolveTheConfigFile
