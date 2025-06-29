FROM node:20
WORKDIR /app
COPY server ./server
COPY client ./client
WORKDIR /app/server
RUN npm install
WORKDIR /app/client
RUN npm install
WORKDIR /app
CMD ["sh", "-c", "cd server && npm run start"]
