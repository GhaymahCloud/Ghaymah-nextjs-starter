FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install next react react-dom
RUN npm run build

EXPOSE 3000

ENV NODE_ENV=production

CMD ["npx", "next", "start"]