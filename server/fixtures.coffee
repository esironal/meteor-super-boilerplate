Meteor.startup ->
    if Companies.find().count() is 0
        
        Companies.insert(
            name: 'Burger King'
            #location:
                #address: '123 fake street'
                #city: 'Meredith'
                #state: 'NH'
                #zip_code: '332232'
        )
