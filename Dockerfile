FROM python:3.7-alpine
WORKDIR /django-blog
COPY requirements.txt requirements.txt
RUN \
    apt-get update  \
    && apt-get install -y \
    python3 python3-pip
RUN pip install -r requirements.txt
EXPOSE 3000
COPY . .
CMD ["python","manage.py","runserver","0.0.0.0:3000"]