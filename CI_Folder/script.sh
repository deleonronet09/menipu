#!/bin/bash

sudo pip install -r CI_Folder/requirements/development.pip
sudo coverage erase
sudo coverage run CI_Folder/manage.py test CI_Folder/tests
sudo coverage html
