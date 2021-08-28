FROM python:2.7-alpine
LABEL maintainer="Rajkumar N <rajkumar.natarajan@gmail.com>"
COPY . /ttuser
WORKDIR /ttuser
RUN pip install -r requirements.txt
EXPOSE 3111
RUN python init_db.py
CMD [ "python", "app.py" ]
