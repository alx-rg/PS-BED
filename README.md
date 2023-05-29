# PS project



#### #1 Simple Search

In this project, I implemented a simple search functionality for the `Pet` model to filter pets based on a given query. I added a class method called `search` in the `Pet` model that takes a query as an argument and returns pets with matching values in their `name`, `description`, `favoriteFood`, `breed`, or `race` fields. I used the `LIKE` operator along with the `LOWER()` function to perform a case-insensitive search across the specified fields.

To test this search functionality, I used the RSpec testing framework, a popular gem for writing and running tests in Ruby applications. I installed the `rspec-rails` gem and set up RSpec for our Rails application. I then wrote a test in the `spec/models/pet_spec.rb` file to ensure that the `search` method returns pets with matching values in different fields and returns all pets when the search query is empty.

This test checks the following scenarios:

- The search method returns pets with matching names.
- The search method returns pets with matching values in different fields.
- The search method returns all pets when the search query is empty.

#### #2 Pagination

I added pagination to my Ruby on Rails application using the `Kaminari gem`, which allowed me to easily control the number of items displayed per page. After integrating the gem, I set the maximum number of items displayed per `page to 9`.

I wrote tests for both the Pet model and the PetsController, verifying the proper functionality of the search method and the index action. By using RSpec, I was able to run the tests on my application.

The pagination offers the number of pages available `1, 2, 3` (or more if there are more pages)
When doing a search, the pagination number shrinks accordingly. (For dogs, it goes down to `1, 2`)
There is a `Next` and `Previous` Button
There is a `First` and `Last` Button

When using pagination my query returns `http://127.0.2.3:3000/pets?page=2` for page 2.


#### #3 Adding Validations
#### #4 Error and success messages
#### #5 Uploading images and files
#### #6 Adding payment gateways like Stripe
#### #7 Sending emails
#### #8 Respond to JSON
