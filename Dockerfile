FROM node:14-alpine
WORKDIR /react-sneakers-master
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build
CMD ["npm","start"]
EXPOSE 3000
