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
Search pagination works as expected. (For dogs, it goes down to `1, 2`)
There is a `Next` and `Previous` Button
There is a `First` and `Last` Button

When using pagination my query returns `http://127.0.2.3:3000/pets?page=2` for page 2.

#### #3 Adding Validations

I recently added database validation to the app to ensure data integrity and prevent invalid records from being saved.

I added backend validation, front-end client validation to provide immediate feedback when user inputs incorrect information.

To ensure that these features work as expected, I wrote tests that check the validation logic and error messages

#### #4 Error and success messages

I also incorporated toasts to display success on create, update or destroy.

There's now also error messages.

#### #5 Uploading images and files

Using Cloudinary I was able to add a file upload when I create a new pet.

The image file then gets sent to Cloudinary where a url is returned and added with all the necessary Pet information into the database.

When a user views a pet they see the image, and in an edit situation, they can change or remove the url.

#### #6 Adding payment gateways like Stripe

Using Stripe, a used is able to navigate to the pet they would like to purchase and go through the necessary steps to input their payment method along with their information in order to purchase the pet.

Rather than setting up the pets on the Stripe website the data residing on the database was passed in to the Stripe API in order to get the correct amount based on the cost of each pet, once on the credit card page modal, the user enters their payment information to purchase the pet.

#### #7 Sending emails

To create the mailer for the emails that will be sent upon confirmation of a pet purchase, I created a mailer file named `pet_purchase_mailer.rb` in the `app/mailers` directory.

Inside the mailer file, I defined a `purchase_confirmation` method to handle sending the email, passing in the pet details and buyer's email address. Additionally, I created an email view template called `purchase_confirmation.html.erb` in the `app/views/pet_purchase_mailer` directory, customizing it to display the pet information, pictures, and price in a visually appealing manner.

Once payment is received, the confirmation email is sent to the customer.

#### #8 Respond to JSON
