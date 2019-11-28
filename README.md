# Toolbrary

Toolbrary is a peer to peer market place centered around the idea of renting and lending tools from your neighbours.

## Motivation
This is a team project. Our main goal with this project was to experience working on a large group project. We also wanted to try our hand at making a functional peer to peer market place. This was created using the Ruby, Ruby on Rails, CSS, HTML and JavaScript.   

## Access

please vist [https://thetoolbrary-squishickle.herokuapp.com/](https://thetoolbrary-squishickle.herokuapp.com/) to have a look

## Installation

### Clone the repository
in your terminal:

```Ruby
git clone git@github.com:squishickle/the-toolbrary.git
cd project
```

### Check your Ruby version
in your terminal:

```
ruby -v
```

if you have a version below 2.5.1 install a leter version:

```
rbenv install 2.6.3
```

### install gems
in your terminal:
``` 
bundle install
```

```
touch .env
echo '.env*' >> .gitignore
```

You will have to create a free acount with [cloudinary](https://cloudinary.com/) or another cloud image hosting service
* copy your Environment variable URL into the .env file

"CLOUDINARY_URL=cloudinary://***************:***************************@dvlfueugu" *it should look something like this*

You will also need a [mapbox](https://www.mapbox.com/) api key 
* copy your Environment variable URL into the .env file

"MAPBOX_API_KEY=pk.***************.***************************" *it should look something like this*


## Initialize the database
in your terminal:
```
brew install postgresql
brew services start postgresql
```

```
rails db:create db:migrate db:seed
```

## Serve
in your terminal:
``` 
rails s
```

## How it works
* open [http://localhost:3000](http://localhost:3000/)
* pick a category or search a tool - you can also leave the search field blank to return all the results
* click on a tool and pick a date to rent
* you will have to create an account to rent a tool or add your own tools
* once logged in you can create tools, look at tools your lending and renting 

## Contributing
Anyone who would like to contribute is welcome to. For any major changes, please open an issue first to discuss what you would like to change.
