FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY . .
RUN mkdir -p /data
ENV PORT=3001 DB_PATH=/data/paint-hide.sqlite
EXPOSE 3001
CMD ["npm","start"]