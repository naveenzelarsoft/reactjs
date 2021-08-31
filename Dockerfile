FROM         node:lts-alpine
COPY         . ./frontend
WORKDIR      /frontend
ENV          PATH /frontend/node_modules/.bin:$PATH
RUN          npm install
RUN          npm run build
CMD          [ "npm", "start"]




