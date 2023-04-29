FROM    nginx:latest
WORKDIR  /app
ADD   https://www.free-css.com/assets/files/free-css-templates/download/page290/maria-ferrero.zip .
RUN apt update && apt install zip -y  && unzip maria-ferrero.zip
RUN  rm -rf /usr/share/nginx/html/* && cp -rf /app/One-Page-Portfolio-Template-master/* /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
