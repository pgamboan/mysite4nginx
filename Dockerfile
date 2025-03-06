# npm
FROM node:18 AS build

WORKDIR /app
COPY ./mysite4nginx/ /app/

RUN npm install
RUN npm run build
FROM nginx:latest

# Copiar los archivos generados al contenedor 
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

# Iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]
