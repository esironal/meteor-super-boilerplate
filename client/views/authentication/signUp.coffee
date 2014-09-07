Template.signUp.events(
    'submit #signUp': (e) ->
        e.preventDefault()
        Router.go 'profile'
)
