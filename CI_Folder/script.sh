#!/bin/bash

sudo pip install virtualenv
sudo virtualenv --no-site-packages CI_Venv
source CI_Venv/bin/activate
sudo pip install -r CI_Folder/requirements/development.pip
pip install django
pyflakes CI_Folder/tests/calculator.py 
python CI_Folder/manage.py test CI_Folder/tests
