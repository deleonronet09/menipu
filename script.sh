#!/bin/bash

virtualenv --no-site-packages CI_Venv
source CI_Venv/bin/activate
pip install -r development.pip
pyflakes PY_Files/*
python test.py
