# Start the server on localhost/3000
rails server

# Create the HTTP routes 
rails routes

# Models in Rails use a singular name, and their corresponding database tables use a plural name. To create the new model
$ bin/rails generate model Article title:string text:text

# Migration (databse modifications) default env is development but other can be specified with RAILS_ENV
rails db:migrate RAILS_ENV=production