FROM python:3.7-alpine

EXPOSE 8555

RUN mkdir /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install requests

COPY docker-hook docker-hook

RUN chmod +x docker-hook

CMD /app/docker-hook -t $TOKEN -c sh /app/.deploy.sh
