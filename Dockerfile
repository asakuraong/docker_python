FROM python:2.7.11-alpine
MAINTAINER UP1 <somkiat.p@gmail.com>
ADD ./web/requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD ./web /opt/web/
WORKDIR /opt/web
EXPOSE 8888
CMD ["python", "app.py"]
