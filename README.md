# KarlG

This is a version of GitHub's Campfire bot, hubot, with highly opinionated
configuration. Further documentation is available at http://hubot.github.com/,
and general configuration info and usage from hubot applies to KarlG.

### Deploying your own

KarlG is designed to be deployed on [Heroku][heroku] You will need a verified
account, but can be run entirely with free add-ons.

    heroku create --stack cedar
    git push heroku master
    heroku ps:scale app=1

Set the following configuration variables:

    heroku config:add REDISTOGO_URL="..."
    heroku config:add HUBOT_IRC_NICK="KarlG"                                    # needs to match the Proc file
    heroku config:add HUBOT_IRC_ROOMS="#channel-name,#other-channel"
    heroku config:add HUBOT_IRC_SERVER="irc.yourserver.biz"
    heroku config:add HUBOT_IRC_PASSWORD="seekritz"                             # probably optional from here down
    heroku config:add HUBOT_IRC_NICKSERV_PASSWORD="password for bot"
    heroku config:add HUBOT_IRC_PORT=6697
    heroku config:add HUBOT_IRC_USESSL="true"

Add the following heroku add-ons:

    heroku config:add redistogo:nano

More detailed instructions are available at [grove][grove-install] and the
Heroku [node docs][heroku-node-docs].

More detailed documentation can be found on the
[deploying hubot onto Heroku][deploy-heroku] wiki page.

[heroku]: http://www.heroku.com
[grove-install]: https://grove.io/blog/hubot-grove
[heroku-node-docs]: https://devcenter.heroku.com/articles/nodejs

## Maintenance

Get comfortable with `heroku logs --tail` and `heroku restart`

