Meteor.methods(
    'updateProfile': (userId, update) ->
        Meteor.users.update {_id: userId}, update, (error) ->
            console.log 'User Updated'
)
