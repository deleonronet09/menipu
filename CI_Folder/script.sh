#!/bin/bash

virtualenv --no-site-packages CI_Venv
source CI_Venv/bin/activate
pip install -r development.pip
pyflakes CI_Folder/tests/calculator.py 
python manage.py test tests
