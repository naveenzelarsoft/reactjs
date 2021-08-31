FROM         node:13.12.0-alpine
COPY         . ./frontend
WORKDIR      /frontend
ENV          PATH /frontend/node_modules/.bin:$PATH
RUN          npm install
RUN          npm run build
CMD          [ "npm", "start"]




