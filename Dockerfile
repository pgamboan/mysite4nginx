# npm
FROM node:18 AS build

WORKDIR /app

COPY ./mysite4nginx/package.json ./mysite4nginx/package-lock.json ./

RUN npm install

# Copiar el repo en el contenedor
COPY ./mysite4nginx/ /app/

# build
RUN npm run build
FROM nginx:latest

# Copiar los archivos generados al contenedor 
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

# Iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]
