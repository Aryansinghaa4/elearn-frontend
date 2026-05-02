FROM node
WORKDIR /dhondhu
COPY . . 
RUN npm install
RUN npm run build
RUN apt update
RUN apt install -y nginx
RUN cp -r /dhondhu/build/* /var/www/html
CMD ["nginx", "-g", "daemon off;"]
