FROM ubuntu:14.04
MAINTAINER UP1 <somkiat.p@gmail.com>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip 
ADD ./web/requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD ./web /opt/web/
WORKDIR /opt/web
EXPOSE 8888
CMD ["python", "app.py"]
