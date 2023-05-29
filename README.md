# PS project



#### #1 Simple Search

In this project, we implemented a simple search functionality for the `Pet` model to filter pets based on a given query. We added a class method called `search` in the `Pet` model that takes a query as an argument and returns pets with matching values in their `name`, `description`, `favoriteFood`, `breed`, or `race` fields. We used the `LIKE` operator along with the `LOWER()` function to perform a case-insensitive search across the specified fields.

To test this search functionality, we used the RSpec testing framework, a popular gem for writing and running tests in Ruby applications. We installed the `rspec-rails` gem and set up RSpec for our Rails application. We then wrote a test in the `spec/models/pet_spec.rb` file to ensure that the `search` method returns pets with matching values in different fields and returns all pets when the search query is empty.

This test checks the following scenarios:

- The search method returns pets with matching names.
- The search method returns pets with matching values in different fields.
- The search method returns all pets when the search query is empty.

#### #2 Pagination
#### #3 Adding Validations
#### #4 Error and success messages
#### #5 Uploading images and files
#### #6 Adding payment gateways like Stripe
#### #7 Sending emails
#### #8 Respond to JSON
