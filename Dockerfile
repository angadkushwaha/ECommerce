FROM node:16.15.0-alpine
WORKDIR /ECommerce
COPY package.json ./
COPY package-lock.json ./
RUN npm i
COPY ./ ./
EXPOSE 3000
CMD ["npm", "run", "start"]