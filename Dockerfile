FROM python:3
RUN pip install django==3.2
WORKDIR /app
COPY . .

RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
EXPOSE 8000

