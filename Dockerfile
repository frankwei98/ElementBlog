FROM node:6.10.3-slim
RUN apt-get update
RUN apt-get install -y nginx
WORKDIR /app
COPY . /app/
EXPOSE 80
RUN yarn \
    && yarn run build \
    && cp -r dist/* /var/www/html \
    && rm -rf /app
CMD ["nginx","-g","daemon off;"]