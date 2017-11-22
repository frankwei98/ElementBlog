FROM node:6.10.3-slim
# add Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install yarn
WORKDIR /app
COPY . /app/
EXPOSE 80
RUN npm
RUN yarn \
    && yarn run build \
    && cp -r dist/* /var/www/html \
    && rm -rf /app
CMD ["nginx","-g","daemon off;"]