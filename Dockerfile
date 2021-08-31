#FROM         node:lts-alpine
#COPY         . ./frontend
#WORKDIR      /frontend
#ENV          PATH /frontend/node_modules/.bin:$PATH
#RUN          npm install
#RUN          npm run build
#CMD          [ "npm", "start"]


FROM node:alpine
WORKDIR /app
COPY . /app
ENV PATH /app/node_modules/.bin:$PATH

RUN yarn
RUN yarn build

EXPOSE 3000

CMD ["npm", "run", "start"]
