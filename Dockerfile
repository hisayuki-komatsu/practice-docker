# FROM golang:1.13

# RUN mkdir /echo
# COPY main.go /echo

# CMD ["go", "run", "/echo/main.go"]

# ----------------------------------------

FROM ubuntu:16.04

RUN apt update
RUN apt install -y cron

COPY task.sh /usr/local/bin/
COPY cron-example /etc/cron.d/
RUN chmod 0644 /etc/cron.d/cron-example
CMD ["cron", "-f"]
