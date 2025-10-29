FROM node:20-alpine
WORKDIR /usr/src/app
COPY app/package*.json ./
RUN npm ci --only=production
COPY app/ ./
ENV PORT=8080
EXPOSE 8080
CMD ["npm", "start"]