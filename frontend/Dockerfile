FROM resin/rpi-raspbian:jessie-20160511

RUN apt-get update && apt-get -y install fbi imagemagick wget

COPY . /usr/src/app
WORKDIR /usr/src/app

#ENV INITSYSTEM ON

CMD ./prestart.sh && ./start.sh
