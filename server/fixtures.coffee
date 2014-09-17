Meteor.startup ->
    if Meteor.users.find().count() is 0
        console.log "No Users. Let's create some"

        users = [
          {
            name: "Level 1"
            email: "level1@gmail.com"
            roles: ["one"]
          }
          {
            name: "Level 2"
            email: "level2@gmail.com"
            roles: ["two"]
          }
          {
            name: "Level 3"
            email: "level3@gmail.com"
            roles: ["three"]
          }
          {
            name: "Admin User"
            email: "admin@gmail.com"
            roles: ["admin"]
          }
        ]
        _.each users, (user) ->
          id = Accounts.createUser(
            email: user.email
            password: "password"
            profile:
              name: user.name
          )
  
          console.log 'Created Dummy Users'

          # Need _id of existing user record so this call must come 
          # after `Accounts.createUser` or `Accounts.onCreate`
          Roles.addUsersToRoles id, user.roles  if user.roles.length > 0
          return


    if Companies.find().count() is 0
        
        Companies.insert(
            name: 'Burger King'
            location:
                address: '123 fake street'
                city: 'Meredith'
                state: 'NH'
                zip_code: '332232'
        )

        console.log 'Created Dummy Users'
