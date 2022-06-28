# syntax=docker/dockerfile:1
FROM ubuntu:latest
COPY app/ /app
RUN apt update
RUN apt install python3 -y
RUN python3 /app/app.py
