FROM node:10-slim

WORKDIR /mastodon-bot

ADD mastodon-bot.cljs /mastodon-bot/
ADD mastodon-bot.js /mastodon-bot/
ADD package.json /mastodon-bot/

RUN npm install && npm install -g lumo-cljs

VOLUME /config

ENTRYPOINT ["npm", "start"]
