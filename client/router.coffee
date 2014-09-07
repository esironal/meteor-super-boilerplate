Router.configure(
    layoutTemplate: 'layout'
    notFoundTemplate: 'notFound'
)

Router.map ->

    @.route('landing',
        path: '/'
    )

    @.route('signIn',
        path: '/sign-in'
    )

    @.route('signUp',
        path: '/sign-up'
    )

    @.route('dashboard')

    @.route('profile')
