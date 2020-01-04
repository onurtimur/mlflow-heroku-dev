FROM tiangolo/uwsgi-nginx-flask:python3.6
USER root
RUN pip install --upgrade pip && \
pip install mlflow

EXPOSE 5000
CMD mlflow server \
    --host 0.0.0.0 --port ${PORT}

# heroku determines the port 
