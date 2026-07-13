FROM nginx:alpine

# 1. Cambiar el puerto por defecto (80) a 3001
RUN sed -i 's/listen  .*80;/listen 3001;/g' /etc/nginx/conf.d/default.conf

# 2. Obligar a Nginx a leer los .md como texto plano para que el navegador no los descargue
RUN sed -i '/text\/plain/s/txt;/txt md;/' /etc/nginx/mime.types

# 3. Copiar tus archivos
COPY index.html /usr/share/nginx/html/index.html
COPY TEST.md /usr/share/nginx/html/TEST.md

# 4. Exponer el puerto
EXPOSE 3001