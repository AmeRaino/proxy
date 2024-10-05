FROM node:20.15.1

WORKDIR /home/app

# Copy and setup your project
COPY package.json /home/app/package.json

RUN yarn install --frozen-lockfile

COPY . /home/app

CMD ["yarn", "start"]
