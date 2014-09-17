
signOut = (e, t) ->
    e.preventDefault()
    Meteor.logout ->
        console.log 'User signed out'
        Router.go 'landing'

Template.guestHeader.events(
    'click #logout': signOut
)

Template.userHeader.events(
    'click #logout': signOut
)
