FROM golang:1.8.5-alpine3.6
MAINTAINER  zhuangjiadong<jiadong.zhuang@qq.com> 

RUN apk update && apk upgrade && apk add --no-cache bash git openssh curl
RUN curl https://glide.sh/get | sh

