#! /bin/bash
read "Do you want this install to ba a pi server or an analyzer? Answer PI for pi or ANALYSER fir analyseer:" installKind
if installKind == "PI"
then
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install mysql-server
    pip install -r requirements.txt

else
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install mysql-server
    curl "https://github.com/kahst/BirdNET-Analyzer.git"
    pip install -r requirements.txt
    cd source/.analysis
    python initiate.py