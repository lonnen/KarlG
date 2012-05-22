# Announce changes to Github repositories using post-commit hooks
# to a room specified by the URL.
#
# see the doc for more details: http://help.github.com/post-receive-hooks/
#

module.exports = (robot) ->
  robot.router.post "/karlg/github/:room", (req, res) ->
    room = req.params.room

    data = JSON.parse req.body.payload
    commits = data.commits

    msg = "#{data.user} pushed #{commits.length} commits to #{data.repository.name}:\n"
    msg += "[#{data.ref}] #{commit.message}\n" for commit in commits

    robot.messageRoom room, msg

    res.writeHead 204, { 'Content-Length': 0 }
    res.end()
