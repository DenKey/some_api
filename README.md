# README

## Task

At Company, we sell products in different sizes (S-M-L) and colors (Blue - Green - White) 
for multiple in-house sport's brands (one brand per sport: Brand_1 for football, 
Brand_2 for hiking, Brand_3 for tennis, etc). Every products are available for a certain 
duration, some for a season and some for several years. The availability period can be discontinued.
Based on this context, we would like you to write a Backend API with CRUD endpoints.

## Install

* Clone repository to local machine
* Install postgresql 
* Install rvm
* Create db user `some_api` and grant privileges `GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO some_api;`
* Open directory, run `rvm use`
* Install bundler `gem install bundler`
* Run bundler `bundle`
* Prepare database `rake db:setup`
* Run server `rails s`

## Documentation

Open http://localhost:3000/apipie

## Requests

Example requests in file `TEST_HTTP_REQUESTS_FORMAT.md`
