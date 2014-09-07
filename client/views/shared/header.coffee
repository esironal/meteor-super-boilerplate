Template.guestHeader.events(
    'click #logout': (e, t) ->
        e.preventDefault()
        Meteor.call 'logout', ->
            console.log 'logged out server method called'
            Router.go 'landing'
)
