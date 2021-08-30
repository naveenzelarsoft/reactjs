FROM         node:lts-alpine
RUN          mkdir  -p /app
WORKDIR      /app
COPY         .  /app
RUN          npm install
RUN          npm run build
COPY         . /app
RUN          ls
CMD          [ "npm", "start"]