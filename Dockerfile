FROM python:3.7-alpine

RUN mkdir /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install requests

COPY docker-hook.py docker-hook.py

CMD ["python", "docker-hook.py", "-t", $TOKEN, "-c", "sh", "/app/.deploy.sh"]
