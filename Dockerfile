# main plan is creating by FROM the images and then create containers FROM that image
# instructions are in capital letters. so I caps all of them
# to create this script docker we used all absolute fiel and folder addresses 

FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package*.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 4000

CMD [ "npm", "start"]
