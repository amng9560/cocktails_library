class Ingredient < ActiveRecord::Base
    has_many :drink_ingredient
    has_many :drink, through: :drink_ingredient
end