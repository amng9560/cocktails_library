require "require_all"
require "sinatra/activerecord"
require "sqlite3"
require "pry"
require 'tty-prompt'
require "rest-client"

require_all "lib"

# binding.pry
# 0

# cocktail_list["drinks"].map{|drink| drink["strIngredient1"]}