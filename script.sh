#!/bin/bash

virtualenv --no-site-packages CI_Venv
source CI_Venv/bin/activate
pip install -r development.pip
pyflakes djangogirls/tests/calculator.py
figleaf djangogirls/manage.py test djangogirls/tests
