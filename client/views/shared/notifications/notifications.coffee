Template.notifications.helpers(
    notifications: ->
        Notifications.find()
)

Template.notifications.events(
    'click .close': () ->
        Notifications.remove {_id: this._id}
)
