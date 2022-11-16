FROM mcr.microsoft.com/playwright:v1.27.0-focal
WORKDIR /usr/src/app
COPY package.json package*.json ./
ENV PLAYWRIGHT_BROWSERS_PATH=0
RUN npm ci 
COPY . .
RUN npm run build
CMD ["node", "./src/app.js"]
