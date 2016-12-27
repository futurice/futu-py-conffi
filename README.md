# futu-py-conffi
A generic swiss knife wanna be bash / perl centric application futu-py-conffier ...

## INSTALLATION
    
You need to install bash, perl ( optionally tmux, vim ,ctags ) 

When doing for first time do exactly as shown bellow, otherwise no joy ...
    # create your product dir
    mkdir -p /opt/csitea/futu-py-conffi/

    # fetch the source
    git clone git@github.com:YordanGeorgiev/futu-py-conffi.git

    # build your product version dir - a kind of "this instance of the thingy dir"
    mv -v /opt/csitea/futu-py-conffi/futu-py-conffi /opt/csitea/futu-py-conffi/futu-py-conffi.1.1.5.dev.ysg

    # go to the dir and start hacking ... 
    cd /opt/csitea/futu-py-conffi/futu-py-conffi.1.1.5.dev.ysg
 
    # opionally if you are in the vim camp open the "project relative files list file"
    vim meta/.dev.futu-py-conffi

## CONFIGURATION
    
    # check the configuration files
    find conf

    # create you local conf file      
    mv -v ./sfw/bash/futu-py-conffi/futu-py-conffi.set-your-host.conf ./sfw/bash/futu-py-conffi/futu-py-conffi.`hostname -s`.conf 
    
## RUN

Basically for a starter just run the test script which will test all the ations on your behalf ...
    # run the test script, which will perform all the actions
    bash sfw/bash/futu-py-conffi/test-futu-py-conffi.sh 
