FROM ubuntu:latest

RUN apt-get update &&\
    apt install -qy alsa jackd supercollider dbus-x11 &&\
    rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash sc &&\
    usermod -aG audio sc

USER sc

CMD scide
