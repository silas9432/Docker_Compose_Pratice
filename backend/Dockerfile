FROM python:3.9-alpine3.19

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

<<<<<<< HEAD
ENV FLASK_DB_TYPE="postgres"
ENV FLASK_DB_USER="postgres"
ENV FLASK_DB_NAME="postgres"
ENV FLASK_DB_PASSWORD="secretpass"
ENV FLASK_DB_HOST="db"
ENV FLASK_DB_PORT="5432"
=======
ENV FLASK_APP: "run.py"
ENV FLASK_DB_TYPE: "postgres"
ENV FLASK_DB_USER: "postgres"
ENV FLASK_DB_NAME: "postgres"
ENV FLASK_DB_PASSWORD: "secretpass"
ENV FLASK_DB_HOST: "db"
ENV FLASK_DB_PORT: "5432"
>>>>>>> bbf52a638a1520611f55b441cafb8777b0bb00cb

CMD ["sh", "./start-backend.sh"]
