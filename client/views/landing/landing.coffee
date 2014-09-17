Template.landing.helpers(
    'users': ->
        return Meteor.users.find()
)
Template.landing.rendered = ->
    console.log "Coming in for a landing!"
