#!/bin/bash

PYTHON_PATH=$1
echo "Creating virtual environment in venv using $PYTHON_PATH"

virtualenv -p $PYTHON_PATH venv
VENV_PATH=venv
if [ -d "$VENV_PATH" ]; then
    echo "Virtual env created successfully. Activating environment."
    . venv/bin/activate
    echo "Installing with pip: Flask, python-dotenv."
    pip install Flask python-dotenv
    pip freeze > requirements.txt
    echo "Successfully created python virtual environment."
else
    echo "Could not create venv with input argument $PYTHON_PATH."
fi
