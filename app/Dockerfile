FROM nginx:alpine

ARG APP_VERSION=dev
ENV APP_VERSION=${APP_VERSION}

RUN rm -f /etc/nginx/conf.d/default.conf

COPY nginx.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
