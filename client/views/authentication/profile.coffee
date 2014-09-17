Template.profile.helpers(
    'user': ->
        Meteor.user()

    'firstName': ->
        Meteor.user().profile.first_name

    'lastName': ->
        Meteor.user().profile.last_name

    'company': ->
        Meteor.user().profile.company
)

Template.profile.events(
    'click #saveProfile': (e) ->
        e.preventDefault()
        userId = Meteor.userId()
        update =
            first_name: $('#first_name').val()
            last_name: $('#last_name').val()
            company: $('company').val()

        Meteor.call('updateProfile', userId, update)
)
