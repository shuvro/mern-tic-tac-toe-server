#FROM node:lts-slim
#RUN mkdir -p /usr/src/app
#WORKDIR /usr/src/app
#EXPOSE 4515
#CMD [ "npm", "run", "dev" ]
#

FROM node:lts-slim
WORKDIR /app
COPY package.json /app/package.json
ENV PATH /app/node_modules/.bin:$PATH
RUN npm install
CMD ["npm", "run", "dev"]