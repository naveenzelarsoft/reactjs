FROM         node:13.12.0-alpine
COPY         . ./frontend
ENV          PATH /frontend/node_modules/.bin:$PATH
WORKDIR      /frontend
RUN          npm install
RUN          npm install react-scripts@3.4.1 -g
RUN          npm run build
CMD          [ "npm", "start"]




