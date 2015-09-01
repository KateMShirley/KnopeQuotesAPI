# KnopeQuotes App and API
A RESTful API with a database of quotes from ladyboss role model, Leslie Knope, with a Backbone.js client side that allows the user to generate a random Leslie Quote or choose from a category list. The front-end is styled with jQuery, Underscore.js, and CSS. This is intended to be a whimsical one-page web app that provides motivation, inspiration, and laughs for the user.

##Approach
Since this was intended to be a simple, one-page app with only one model I decided to build my RESTful API on Ruby and Sinatra since I did not need the full functionality of Rails. In order to display data to the user I created an Underscore.js template and rendered the data using Backbone.js. My Collection.View includes several render functions that each implement the Underscore .where and .sample methods for the purpose of generating quotes from a specific category. The Underscore.js template is emptied of any content before displaying the next quote so that user is seeing only one quote at a time.

In order to secure my API I created an Admin-only API key to post, patch, and delete data using .env in Ruby. The user functionality is read only and there is not any reason for the user to modify the data.

Finally, when styling I started with Skeleton to give my site a grid and a baseline style. Then I customized from there using CSS and jQuery, and added at "Tweet" button using Twitter's Javascript and CSS helpers.

#####

## Technologies used in creating this site:

* HTML5
* CSS
* SASS
* Skeleton
* Normalize
* jQuery
* underscore.js
* Backbone.js
* Ruby
* Sinatra
* Postgres
* SQL
* Active Record

* Google Fonts used on this website: Bowlby One, Oleo Script Swash Caps

##Inallation instructions:
* Fork from: https://github.com/KateMShirley/KnopeQuotesAPI
* Include the following gems in Gemfile:
1. gem 'sinatra'
2. gem 'pg'
3. gem 'json'
4.  gem 'sinatra-activerecord'
5.  gem 'dotenv'
* Bundle in terminal
* Include the following libraries from CDN:
1. Backbone.js
2. Underscore.js
3. jQuery
* Bundle Exec Rackup in terminal to display in browser.

##Screenshots:  

* SCREENSHOT OF PAGE WILL GO HERE (I RAN OUT OF TIME TO FIX STYLING AND SCREEN SHOT ON TUESDAY MORNING BECAUSE GIT IS THE WORST)

##Leslie Knope Quotes 2.0


---
###Backbone Application Assignment
Your app must:

* **Use Ruby & Sinatra OR Rails** to build an API.
* **Create a RESTful API using at least one model**.
* Include **all major CRUD functions** in a **RESTful API** that will work using CocoaREST, Postman, or any client of your choosing.
* **Consume your own API** by making your front-end with HTML, Javascript, & jQuery, and Backbone.js.
* **Add support in your API for Backbone**. Do not neglect support for standardized API access as well.
* **Add authentication to your API** to restrict access to appropriate users. This can be done using API keys, user accounts, or any other form of authenication *except* OAuth (because we'll cover that soon).
* **Craft thoughtful user stories** to explain your API.
* **Manage your source code** using a standard Git flow on Github.
* Layout and style your front-end with **clean & well-formatted CSS and make it Responsive**. Bootstrap, Skeleton, Foundation, and other front-end CSS frameworks are all welcome here!
* **Deploy your application online** so it's publically accessible. For Sinatra, use Digital Ocean. For Rails, use Heroku.



###### This application was created by Kate Shirley
