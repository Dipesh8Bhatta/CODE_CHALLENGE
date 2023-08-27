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
* 
  ```ruby
  bundle install
  ```
* 
  ```ruby
  rails s
  ```

You will get a link
```erb
http://127.0.0.1:3001/
```


2> Docker way

* Go to the project root directory
* build docker image with the tag interest_calculator or whatever your want
 ```ruby
 docker build -t interest_calculator .
 ```
* Run the docker container for the above-created image. The first port is the port you listen to on your machine.
 ```ruby
 docker run -p 3001:3000 interest_calculator
 ```
* Your app will be running on 
 ```erb
 http://127.0.0.1:3001/
 ```


Thanks!
