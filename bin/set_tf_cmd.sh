#!/usr/bin/env bash

grep -q 'alias tf="terraform"' ~/.bash_profile

if [ $? -ne 0 ]; then
    
    echo 'alias tf="terraform"' >> ~/.bash_profile
    echo 'alias added successfully.' 

else

    echo 'alias already exists.'

fi

source ~/.bash_profile