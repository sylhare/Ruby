## Docker on Rails

More information on [Get Ruby on rails in a Docker](https://docs.docker.com/compose/rails)

### Build the docker
You'll need to create a Dockerfile and a docker-compose.yml. Then you will need to create a simple Gemfile with:

```ruby
source 'https://rubygems.org' do
	gem 'rails', '5.0.0.1'
end
```

and an empty Gemfile.lock (with `touch Gemfile.lock`

you can now generate the Rails skeleton app

```bash
sudo docker-compose run web rails new . --force --database=postgresql
```

To make the file unlock for a user because the container runs as the root user:

```bash
#To check the rights
ls -l 

# To change ownership of the file 	
sudo chown -R $USER:$USER /path/to/dir
```

Now that you’ve got a new Gemfile, you need to build the image again.
	docker-compose build

### Get the application started

Make sure your config/database.yml files contains:
```yml
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password:
  pool: 5

development:
  <<: *default
  database: myapp_development


test:
  <<: *default
  database: myapp_test
```

Boot the app with
	docker-compose up

And create in another terminal the database with:
	docker-compose run web rake db:create

Now the Ruby on rails web page should be displayed at [http://localhost:3000](http://localhost:3000). If you are using Docker Machine, then docker-machine ip MACHINE_VM returns the Docker host IP address, to which you can append the port (<Docker-Host-IP>:3000).

Stop the application
	docker-compose down

### Rebuild the application

If you make changes to the Gemfile or the Compose file to try out some different configurations, you will need to rebuild. Some changes will require only docker-compose up --build, but a full rebuild requires a re-run of docker-compose run web bundle install to sync changes in the Gemfile.lock to the host, followed by docker-compose up --build.


