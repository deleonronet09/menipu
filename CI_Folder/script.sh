#!/bin/bash

sudo pip install -r CI_Folder/requirements/development.pip
sudo pyflakes CI_Folder/tests/calculator.py
sudo flake8 CI_Folder/tests/calculator.py
sudo python CI_Folder/manage.py test CI_Folder/tests
