
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY . .

EXPOSE 8000

# Nginx starts by default, so no CMD needed
