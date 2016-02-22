#!/bin/bash

pip install virtualenv
virtualenv --no-site-packages CI_Venv
source CI_Venv/bin/activate
pip install -r CI_Folder/requirements/development.pip
pyflakes CI_Folder/tests/calculator.py 
python CI_Folder/manage.py test CI_Folder/tests
