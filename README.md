Rails Microservices on Docker w/Kafka Example
---

# How-To
Run docker-compose build
Run docker-compose run auth_web rake db:create
Run docker-compose run auth_web rake db:migrate
Run docker-compose run namer rake db:migrate
Run docker-compose up

- In a separate terminal window, run:

docker-compose run namer racecar NameRandomizerConsumer

- Then:

Make a POST request to localhost:3000/users to create a user with the following parameters:
  - full_name
  - email
  - password
  - password_confirmation

That post request will create a user and send a message to the NameRandomizerConsumer located in the name_randomizer Rails app ( app/consumers/name_randomizer_consumer.rb ). The consumer will then process this request and make a random name entry in the db with the user id of the user created.

# If this DOES NOT work, please check your hosts file (/etc/hosts) and add:

127.0.0.1       kafka
