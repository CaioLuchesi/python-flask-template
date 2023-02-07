FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN python_flask_template create-db
RUN python_flask_template populate-db
RUN python_flask_template add-user -u admin -p admin
EXPOSE 5000
CMD ["python_flask_template", "run"]
