#!/bin/bash

# Define environment variable
export FLASK_APP=${FLASK_APP:-"run.py"}

# Run app.py when the container launches
flask run --host=0.0.0.0 --port=5000
