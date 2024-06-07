FROM python:3.7.3-stretch

# This is to prevent Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1  

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

# Ensure django.sh has execute permissions
RUN chmod +x /app/django.sh

EXPOSE 8000

ENTRYPOINT ["/app/django.sh"]