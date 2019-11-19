### description

the bot will post the timeline from the specified Twitter/Tumblr accounts and RSS feeds to Mastodon

### installation

1. install [Node.js](https://nodejs.org/en/)
2. run `npm install` to install Node modules
3. run `npm start` to, well, start

If you wish to run the script directly, you will need to have [Lumo](https://github.com/anmonteiro/lumo) available on the shell path. Lumo can be installed globally via NPM by running:

    npm install -g lumo-cljs

If you get a [permission failure](https://github.com/anmonteiro/lumo/issues/206), try this:

    npm install -g lumo-cljs --unsafe-perm

### usage

#### Docker synopsis

    docker run --rm -ti \
        -v $(pwd):/config \
        --env MASTODON_BOT_CONFIG=/config/my_config.edn \
        quay.io/netzbegruenung/mastodon-bot

#### long form

* create a Mastodon API key following the instructions [here](https://tinysubversions.com/notes/mastodon-bot/)
* create a Twitter API key follwing the instructions [here](https://developer.twitter.com/en/docs/basics/authentication/guides/access-tokens)
* create a Tumblr API key following the instructions [here](http://www.developerdrive.com/2014/05/how-to-get-started-with-the-tumblr-api-part-1/)
* create a config file by copying the `config.edn.example`

**NOTE**: the bot checks the specified Mastodon account to see the timestamp of the last post, and only posts content
with later timestamps to avoid duplicate posts. On the first run the timestamp will default to current time.

* the bot looks for `config.edn` at its relative path by default, an alternative location can be specified either using the `MASTODON_BOT_CONFIG` environment variable or passing the path to config as an argument

* run the bot: `./mastodon-bot.cljs`
* to poll at intervals setup a cron job such as:

    */30 * * * * mastodon-bot.cljs /path/to/config.edn > /dev/null 2>&1

## License

Copyright © 2018 Dmitri Sotnikov

Distributed under the [MIT License](http://opensource.org/licenses/MIT).
