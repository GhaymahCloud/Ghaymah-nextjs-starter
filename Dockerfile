FROM node:18-alpine

WORKDIR /app

COPY package.json .
RUN npm install next react react-dom

COPY . .

RUN npm run build

EXPOSE 3000

ENV NODE_ENV=production

CMD ["npx", "next", "start"]