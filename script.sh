#!/bin/bash

virtualenv --no-site-packages CI_Venv
source CI_Venv/bin/activate
pip install -r development.pip
pyflakes djangogirls/tests/calculator.py
git clone -f https://github.com/ctb/figleaf
python djangogirls/manage.py test djangogirls/tests
#python ../figleaf/bin/figleaf ../djangogirls/manage.py test ../djangogirls/tests
#python ../figleaf/bin/figleaf2html .figleaf
