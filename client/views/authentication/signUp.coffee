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
                console.log error
            console.log "Signed Up Successfully"
            Router.go 'profile'
)
