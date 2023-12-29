FROM python:3.12-alpine
COPY requirements.txt requirements.txt
RUN python -m ensurepip --upgrade
RUN pip install -r requirements.txt
RUN django-admin startproject blogpy
EXPOSE 8000
WORKDIR blogpy
COPY . .
## RUN django-admin startproject blogpy
## ENTRYPOINT ["tail", "-f", "/dev/null"]
## "manage.py","runserver","0.0.0.0:8000"
CMD ["python","manage.py","runserver","0.0.0.0:8000"]