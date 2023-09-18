FROM golang:1.20-alpine AS GOLANG

LABEL maintainer=Cloudbees-pod-7 \
    email=engineering@cloudbees.io

RUN mkdir /app
WORKDIR /app

COPY hello_world_app /app

ENTRYPOINT [ "go", "run" ,"main.go" ]