FROM collabora/code:latest

ADD etc/ /etc/nginx
USER root
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt upgrade -y && apt install -y \
    nginx
USER 101
CMD nginx && bash /start-collabora-online.sh