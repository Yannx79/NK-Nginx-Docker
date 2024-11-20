FROM nginx:stable-alpine3.20-perl AS Base
COPY ./html /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

LABEL maintainer="https://www.linkedin.com/in/yannick-yasuhiro-funes-chavez/"
LABEL version="0.0.1"
LABEL description="This container runs Nginx with a custom configuration."