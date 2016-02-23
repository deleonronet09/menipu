#!/bin/bash

sudo pip install -r CI_Folder/requirements/development.pip
pyflakes CI_Folder/tests/calculator.py 
python CI_Folder/manage.py test CI_Folder/tests
