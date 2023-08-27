# README

These are the basics things installed to run this application.


* Ruby version : 3.1.4

* rails : rails 7

* Database : No database has been used.

* A basic concept of Hotwire: Sprinkle of turbo_stream and turbo_frame has been used.

Two way to eun this application

1> Simple way

* Go to the project root directory
* use the ruby version 3.1.4
* ```erb
bundle install
* ```erb
rails s

You will get a link http://127.0.0.1:3000/


2> Docker way

* Go to the project root directory
* build docker image with the tag interest_calculator or whatever your want
 ```erb
 docker build -t interest_calculator . 
* Run the docker container for the above image
 ```erb
 docker run -p 3001:3000 interest_calculator
* Your app will be running on http://127.0.0.1:3001/


Thanks!