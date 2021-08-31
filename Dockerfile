FROM         node:16.14.0
COPY         . /frontend
WORKDIR      /frontend
RUN          npm install
RUN          npm run build
CMD          [ "npm", "start"]
