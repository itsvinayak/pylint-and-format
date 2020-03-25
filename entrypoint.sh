#!/usr/bin/env bash

echo "Running style checks on ${inputs.filename}"
flake8 ${inputs.filename} 

echo "formating ${inputs.filename}"
black ${inputs.filename}

echo " Style checked and formated "
