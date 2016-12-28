#  FUTU-PY-CONFFI DEVOPS GUIDE


     

## 1. INSTALLATION AND DEPLOYMENT


    

### 1.1. Prerequisites
The must have binaries are:
 bash, perl, zip, python3

The nice to have are:
 tmux, vim ,ctags

The examples are for Ubuntu - use you OS package manager …

    apt-get autoclean
    apt-get install --only-upgrade bash
    sudo apt-get install -y perl
    
    # optionally 
    sudo apt-get install -y excuberant-ctags
    sudo apt-get install -y 7z
    
    apt-get upgrade

#### 1.1.1. Install python
Install the python3 binary as follows:

    sudo apt-get install python3
    
    # and verify
    python3 -V
    Python 3.5.2

#### 1.1.2. Install pip
Install the python package manager:
The example is for Ubuntu - use the package manager of your OS by choice. 

    sudo apt-get install python-pip
    pip install --upgrade pip
    

#### 1.1.3. Install the Google oauth2client
Install the Google oauth2client ( https://github.com/google/oauth2client ) as follows:

    pip install --upgrade oauth2client

#### 1.1.4. Install the gspread
The Google Spreadsheets Python API is utilized and it must be imported via the pip manager. 
Use the gspread module
https://github.com/burnash/gspread

    sudo pip install gspread
    
    # output:
      Downloading requests-2.12.4-py2.py3-none-any.whl (576kB)
        100% |████████████████████████████████| 583kB 1.7MB/s
    Installing collected packages: requests, gspread
    Successfully installed gspread-0.6.2 requests-2.12.4

### 1.2. Fetch the source
Fetch the source from git hub as follows:

    # create your product dir:
    mkdir -p /opt/futu/futu-pyconffi
    cd /opt/futu/futu-pyconffi/
    git clone https://github.com/futurice/futu-py-conffi
    
    mv -v /opt/futu/futu-py-conffi /opt/futu/futu-py-conffi.0.1.0.dev.$USER

### 1.3. Create you local conf file
The default conf file provides only limited functionality ( this is by design ) , thus copy and configure the configuration file for your host

    # go to the product version dir
    cd /opt/futu/futu-py-conffi.0.1.0.dev.$USER
    
    mv -v sfw/bash/futu-pyconffi/futu-pyconffi.set-your-host.conf \ sfw/bash/futu-pyconffi/futu-pyconffi.`hostname -s`.conf

### 1.4. run the tests
To run all the tests issue the following call

    # go to the product version dir
    cd /opt/futu/futu-py-conffi.0.1.0.dev.$USER
    
    bash sfw/bash/futu-py-conffi/test-futu-py-conffi.sh

## 2. CONFIGURATION


    

## 3. INTERNALS


    

### 3.1. Configure logging
To configure the logging edit the logging.conf file by consulting the following documentation:
https://docs.python.org/3.5/howto/logging.html#logging-basic-tutorial

    

### 3.2. Python objects listing
The following section provides short explanation on the python objects

    

### 3.3. Configure the credentials for the oAuth2Client
Using the :
http://gspread.readthedocs.io/en/latest/oauth2.html
https://github.com/burnash/gspread

    

### 3.4. sfw/python/futu_py_conffi.py
This is the main entry of the python code … 
Kicks up the confgurator and the GoogleSheetToYAML controller obj

    

### 3.5. sfw/python/ctrl/GoogleSheetToYAML.py
Implements the control flow for reading the Google SpreadSheet data , data transfromations and writing to yaml configuration files

    

### 3.6. sfw/python/utils/Initializer.py
A "self-reflecting" module to fetch generically from the project dirs , configuration files etc. 

    

### 3.7. sfw/python/utils/Configurator.py
Responsible for the gloal configuration of the tool. 

    

