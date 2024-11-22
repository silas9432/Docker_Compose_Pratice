#!/bin/bash

# Define environment variable
<<<<<<< HEAD
export FLASK_APP=${FLASK_APP:-"run.py"}
=======
export FLASK_APP=${FLASK_APP:-"run.py"}
>>>>>>> bbf52a638a1520611f55b441cafb8777b0bb00cb

# Run app.py when the container launches
flask run --host=0.0.0.0 --port=5000
