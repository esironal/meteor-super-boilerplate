Template.signIn.events(
    'submit #signIn ': (e) ->
        e.preventDefault()

        email = $('#email').val()
        password = $('#password').val()

        Meteor.loginWithPassword email, password, ->
            console.log 'Successfully signed in'
            Router.go 'dashboard'
)
