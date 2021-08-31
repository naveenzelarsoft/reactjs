FROM         node:16-alpine3.14
COPY         . /frontend
WORKDIR      /frontend
RUN          npm install
RUN          npm run build
CMD          [ "npm", "start"]
