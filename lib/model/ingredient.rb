class Ingredient < ActiveRecord::Base
    has_many :drink, through: :drink_ingredient
end