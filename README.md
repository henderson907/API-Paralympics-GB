# Paralympics GB API

Built using Ruby 3.1.2 and Rails 7.2.2

All information is taken directly from the GB paralympics [website](https://paralympics.org.uk/) and is correct as of 16/04/2025.

## Set Up and Installation
- Fork the repository onto your local machine
- Run `bundle install` to install all gems
- Run `rails db:setup` to create the database, run the migrations and seed file
- If something goes wrong and you need to redo, run `rails db:reset` to drop the database and set it up again
- start the rails server using `rails s` and go to [localhost::3000](http://127.0.0.1:3000) to view!

## Available Endpoints
http://127.0.0.1:3000/athletes
- Returns a list of all athletes in JSON format

http://127.0.0.1:3000/sports
- Returns a list of all sports in JSON format

## Database Schema
![database schema](image.png)
