# Paso 1: Usar la imagen oficial de Nginx basada en Alpine Linux
FROM nginx:alpine

# Paso 2: Cambiar el puerto por defecto (80) a 3001 en la configuración de Nginx
RUN sed -i 's/listen  .*80;/listen 3001;/g' /etc/nginx/conf.d/default.conf

# Paso 3: Copiar el archivo index.html al directorio de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Nueva línea para copiar tu archivo de pruebas:
COPY TEST.md /usr/share/nginx/html/TEST.md

# Paso 4: Exponer el puerto 3001
EXPOSE 3001