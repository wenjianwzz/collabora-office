FROM collabora/code:6.4.2.2

ADD etc/ /etc/nginx
USER root
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt upgrade -y && apt install -y \
    nginx
USER 101
CMD nginx && bash /start-collabora-online.sh