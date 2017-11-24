FROM node:6.10.3-slim
# add Yarn
RUN apt-get update
RUN apt-get install apt-transport-https -y
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y nginx
RUN sed -i '/\/root \/var\/www\/html;/aerror_page 404 /index.html;' /etc/nginx/sites-enabled/default
RUN apt-get install yarn
WORKDIR /app
COPY . /app/
EXPOSE 80
# RUN npm
RUN yarn \
    && yarn run build \
    && cp -r dist/* /var/www/html \
    && rm -rf /app
CMD ["nginx","-g","daemon off;"]