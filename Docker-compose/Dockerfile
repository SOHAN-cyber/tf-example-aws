FROM    nginx:latest
WORKDIR  /app
ADD   https://www.free-css.com/assets/files/free-css-templates/download/page290/maria-ferrero.zip .
RUN apt update && apt install zip -y  && unzip maria-ferrero.zip
ENTRYPOINT ["nginx", "-g", "daemon off;"]