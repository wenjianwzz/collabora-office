FROM collabora/code:latest

ADD etc/ /etc/nginx
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt upgrade -y && apt install -y \
    nginx

CMD nginx && bash /start-collabora-online.sh