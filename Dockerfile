FROM golang:1.8.5-alpine3.6 AS build-docker-glide
MAINTAINER  zhuangjiadong<jiadong.zhuang@qq.com> 

RUN apk update && apk upgrade && apk add --no-cache bash git openssh curl
RUN curl https://glide.sh/get | sh

FROM golang:1.8.5-alpine3.6 
COPY --from=build-docker-glide /go/bin/glide /go/bin/glide 

