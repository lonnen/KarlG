# Utility commands surrounding Hubot uptime.
module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "pong"

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"

  robot.respond /DIE$/i, (msg) ->
    msg.send "... that is all ye know and all ye need to know. Selah"
    process.exit 0

