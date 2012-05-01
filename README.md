# KarlG

A version of GitHub's Hubot, with highly opinionated configuration.

[Hubot documentation][hubot-docs] generally applies; there are no changes to
the core.

[hubot-docs]: http://hubot.github.com/

### Deploying your own

KarlG should be deployed on [Heroku][heroku]. It requires a verified
account, but can be run entirely with free add-ons.

    heroku create --stack cedar
    git push heroku master

Add the following heroku add-ons:

    heroku config:add redistogo:nano

Set the following configuration variables:

    heroku config:add REDISTOGO_URL="..."
    heroku config:add HUBOT_IRC_NICK="KarlG"                                    # needs to match the Proc file
    heroku config:add HUBOT_IRC_ROOMS="#channel-name,#other-channel"
    heroku config:add HUBOT_IRC_SERVER="irc.yourserver.biz"
    heroku config:add HUBOT_IRC_PASSWORD="seekritz"                             # probably optional from here down
    heroku config:add HUBOT_IRC_NICKSERV_PASSWORD="password for bot"
    heroku config:add HUBOT_IRC_PORT=6697
    heroku config:add HUBOT_IRC_USESSL="true"

Turn it on:

    heroku ps:scale app=1

More detailed instructions are available at [grove][grove-install] and the
Heroku [node docs][heroku-node-docs].

[heroku]: http://www.heroku.com
[grove-install]: https://grove.io/blog/hubot-grove
[heroku-node-docs]: https://devcenter.heroku.com/articles/nodejs

## Maintenance

Get comfortable with `heroku logs --tail` and `heroku restart`

Consider changing the log level:

    heroku config:add LOG_LEVEL=DEBUG
