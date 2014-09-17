Template.signUp.events(
    'submit #signUp': (e) ->
        e.preventDefault()

        user =
            email: $('#email').val()
            password: $('#password').val()
            profile:
                first_name: $('#first_name').val()
                last_name: $('#last_name').val()
                company: $('#company').val()

        Accounts.createUser user, (error) ->
            if error?
                console.log "Unable to create user"

                errorMessage =
                    type: "Error"
                    class: "danger"
                    message: 'Unable to create user'
                Notifications.insert errorMessage
                return

            console.log "Signed Up Successfully"

            successMessage =
                type: "Success"
                class: "success"
                message: 'Successfully created user'
            Notifications.insert successMessage
            Router.go 'profile'
)
