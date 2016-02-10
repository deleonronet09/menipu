#!/bin/bash

virtualenv --no-site-packages CI_Venv
source CI_Venv/bin/activate
pip install -r development.pip
pyflakes djangogirls/calculator.py
python djangogirls/manage.py test
