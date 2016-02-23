#!/bin/bash

sudo pip install -r CI_Folder/requirements/development.pip
sudo yflakes CI_Folder/tests/calculator.py 
sudo python CI_Folder/manage.py test CI_Folder/tests
