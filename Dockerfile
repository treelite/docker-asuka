FROM node:5.3.0
MAINTAINER treelite <c.xinle@gmail.com>

RUN npm install -g asuka@0.4.0

EXPOSE 8777

VOLUME ["/root/log/asuka"]

ENTRYPOINT ["asuka", "start", "-f"]
