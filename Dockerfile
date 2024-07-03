# Usamos la imagen oficial de Node.js como imagen base
FROM node:20

# Establecemos el directorio de trabajo en /app
WORKDIR /app

# Copiamos el package.json y el package-lock.json al directorio de trabajo
COPY package*.json ./

# Instalamos las dependencias del proyecto
RUN npm install

# Copiamos el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Exponemos el puerto que usa AdonisJS
EXPOSE 3333

# Iniciamos la aplicación
CMD ["npm", "start"]
