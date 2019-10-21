require "require_all"
require "sinatra/activerecord"
require "sqlite3"
require "pry"
require "rest-client"
require "JSON"
require 'tty-prompt'

require_all "lib"
 
url = RestClient.get("https://www.thecocktaildb.com/api/json/v2/1/popular.php")
cocktail_list= JSON.parse(url)

puts cocktail_list

# binding.pry
# 0