Template.signIn.events(
    'submit #signIn ': (e) ->
        e.preventDefault()

        email = $('#email').val()
        password = $('#password').val()

        Meteor.loginWithPassword email, password, (error) ->
            if error?
                console.log "Email or password is incorrect"
                errorMessage =
                    type: "Error"
                    class: "danger"
                    message: 'Email or password is incorrect'
                Notifications.insert errorMessage
                return
            console.log "Signed In Successfully"
            successMessage =
                type: "Success"
                class: "success"
                message: 'Successfully signed in user'
            Notifications.insert successMessage
            Router.go 'dashboard'
)
