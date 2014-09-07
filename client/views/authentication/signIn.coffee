Template.signIn.events(
    'submit #signIn ': (e) ->
        e.preventDefault()
        Router.go 'dashboard'
)
