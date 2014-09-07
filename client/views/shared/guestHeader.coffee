
Template.guestHeader.events(
    'click a': (e, t) ->
        #e.preventDefault()
        
        #Don't know why $(this) doesn't work
        #$this = $(e.target).parent()

        #if !$this.hasClass('active')
            #$('li').removeClass('active')
            #$this.addClass('active')
)
