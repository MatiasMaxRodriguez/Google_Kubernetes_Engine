# 1. Usamos una imagen ligera de Node.js
FROM node:18-alpine

# 2. Creamos el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiamos los archivos de definición de dependencias
# Se copian primero para aprovechar la caché de capas de Docker
COPY package*.json ./

# 4. Instalamos las dependencias (solo las de producción para que sea ligero)
RUN npm install --production

# 5. Copiamos el resto del código de la aplicación
COPY . .

# 6. Exponemos el puerto definido en tu index.js (3000)
EXPOSE 3000

# 7. Comando para arrancar la aplicación
CMD ["node", "index.js"]