FROM         node:lts-alpine
RUN          mkdir  -p /app/frontend
WORKDIR      /app/frontend
COPY         .  /app/frontend
RUN          npm install
RUN          npm run build
COPY         . /app/frontend
RUN          ls
CMD          ["npm" , "run" , "start"]

#FROM         node:16
#COPY         . /frontend
#WORKDIR      /frontend
#RUN          npm install
#RUN          npm run build
#CMD          [ "npm", "start"]
