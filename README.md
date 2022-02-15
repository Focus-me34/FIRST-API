Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
# FIRST-API

Rails API for experimentation purposes

- Possible to call API to display all the instances of a Restaurant model
- Can show any restaurant to all users (Don't need to be logged in)
- Resttriced actions for PATCH / DELETE methods. Check authorization with Pundit (record.user == user). User must be logged int
- Only creator of an instance can update it Pundit policy = create?


Requirements:
- Api tokenisation made possible with:   gem 'simple_token_authentication'
- Pundit
- Ruby (2.7.4)
- Rails (6.1.4.6)
- Postman (rails c is enough though)


Source of this project:

https://kitt.lewagon.com/knowledge/tutorials/rails_api
