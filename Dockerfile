FROM python3:3
RUN pip3 install django==2.0
WORKDIR /app
COPY . .

RUN python3 manage.py migrate
CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
EXPOSE 8000

