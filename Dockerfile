FROM alpine:3.10.3

RUN apk add ansible nano

RUN mkdir /ansible
WORKDIR /ansible

ENV EDITOR=nano

CMD [ "ansible", "--version" ]
