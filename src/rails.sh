# Start the server on localhost/3000
rails server

# Create the HTTP routes 
rails routes

# Migration (databse modifications) default env is development but other can be specified with RAILS_ENV
rails db:migrate RAILS_ENV=production