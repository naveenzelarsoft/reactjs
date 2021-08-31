FROM         node:lts-alpine
COPY        . ./frontend
WORKDIR     /frontend
RUN         ls
RUN          npm install
RUN          npm run build
CMD          [ "npm", "start"]