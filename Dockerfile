FROM golang:1.6

MAINTAINER Michelle Noorali "michelle@deis.com"

COPY . /go/src/github.com/michelleN/puffy

RUN go install github.com/michelleN/puffy

ENTRYPOINT /go/bin/puffy

EXPOSE 8080
