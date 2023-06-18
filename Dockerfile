FROM gplane/pnpm:8.2.0-node18
WORKDIR /usr/src/app
COPY *.json ./
RUN npm install
COPY . ./
CMD [ "node", "dist/app.js" ]