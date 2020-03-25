#!/usr/bin/env bash

echo "Running style checks on ${inputs.filename}"
flake8 ${inputs.filename} --count --select=E9,F63,F7,F82 --show-source --statistics

echo "formating ${inputs.filename}"
black ${inputs.filename}

echo " Style checked and formated "
