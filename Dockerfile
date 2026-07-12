# Paso 1: Usar la imagen oficial de Nginx basada en Alpine Linux
FROM nginx:alpine

# Paso 2: Copiar el archivo index.html de nuestra máquina al directorio que Nginx usa para servir contenido
COPY index.html /usr/share/nginx/html/index.html

# Paso 3: Exponer el puerto 80 (el puerto por defecto de Nginx)
EXPOSE 80
