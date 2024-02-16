FROM            nginx
RUN             rm -rf /usr/share/nginx/html/*
COPY            . /usr/share/nginx/html/.
RUN             rm -rf /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/.github /usr/share/nginx/html/helm
COPY            nginx.conf /etc/nginx/nginx.conf
COPY            default.conf /etc/nginx/conf.d/default.conf
