FROM python:3.8.6
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app

CMD python3 manage.py migrate
CMD python3 manage.py runserver 0.0.0.0:8000