require 'rest-client'
require 'json'
url = RestClient.get("https://www.thecocktaildb.com/api/json/v2/1/popular.php")
cocktail_list = JSON.parse(url)

# Drink.delete_all
# Ingredient.delete_all

cocktail_list["drinks"].map do |drink|
    Drink.create(name: drink["strDrink"])
end



#spirits
light_rum = Ingredient.create(name: "Light Rum", alcohol?: true)
bourbon = Ingredient.create(name: "Bourbon", alcohol?: true)
vodka = Ingredient.create(name: "Vodka", alcohol?: true)
gin = Ingredient.create(name: "Gin", alcohol?: true)
tequila = Ingredient.create(name: "Tequila", alcohol?: true)
sweet_vermouth = Ingredient.create(name: "Sweet Vermouth", alcohol?: true)
dry_vermouth = Ingredient.create(name: "Dry Vermouth", alcohol?: true)
campari = Ingredient.create(name: "Campari", alcohol?: true)
blended_whiskey = Ingredient.create(name: "Blended Whiskey", alcohol?: true)
triple_sec = Ingredient.create(name: "Triple Sec", alcohol?: true)
apricot_brandy = Ingredient.create(name: "Apricot Brandy", alcohol?: true)
southern_comfort = Ingredient.create(name: "Southern Comfort Whiskey", alcohol?: true)
amaretto = Ingredient.create(name: "Amaretto", alcohol?: true)
sloe_gin = Ingredient.create(name: "Sloe Gin", alcohol?: true)
yellow_chartreuse = Ingredient.create(name: "Yellow Chartreuse", alcohol?: true)
creme_de_cacao = Ingredient.create(name: "Creme De Cacao", alcohol?: true)
brandy = Ingredient.create(name: "Brandy", alcohol?: true)
lemon_vodka = Ingredient.create(name: "Lemon Vodka", alcohol?: true)
blackberry_brandy = Ingredient.create(name: "Blackberry Brandy", alcohol?: true)
kummel = Ingredient.create(name: "Kummel", alcohol?: true)

#bitters
angostura_bitter = Ingredient.create(name: "Angostura Bitter", alcohol?: true)
orange_bitter = Ingredient.create(name: "Orange Bitter", alcohol?: true)

#random ingredients
lime = Ingredient.create(name: "Lime", alcohol?: false)
sugar = Ingredient.create(name: "Sugar", alcohol?: false)
mint = Ingredient.create(name: "Mint", alcohol?: false)
soda_water = Ingredient.create(name: "Soda Water", alcohol?: false)
water = Ingredient.create(name: "Water", alcohol?: false)
lemon = Ingredient.create(name: "Lemon", alcohol?: false)
coca_cola = Ingredient.create(name: "Coca-Cola", alcohol?: false)
powdered_sugar = Ingredient.create(name: "Powdered Sugar", alcohol?: false)
cherry = Ingredient.create(name: "Cherry", alcohol?: false)
olive = Ingredient.create(name: "Olive", alcohol?: false)
salt = Ingredient.create(name: "Salt", alcohol?: false)
lime_juice = Ingredient.create(name: "Lime Juice", alcohol?: false)
maraschino_cherry = Ingredient.create(name: "Maraschino Cherry", alcohol?: false)
orange_peel = Ingredient.create(name: "Orange Peel", alcohol?: false)
ginger_ale = Ingredient.create(name: "Ginger Ale", alcohol?: false)
lemon_juice = Ingredient.create(name: "Lemon Juice", alcohol?: false)
lemon_peel = Ingredient.create(name: "Lemon Peel", alcohol?: false)
light_cream = Ingredient.create(name: "Light Cream", alcohol?: false)
nutmeg = Ingredient.create(name: "Nutmeg", alcohol?: false)
pineapple_juice = Ingredient.create(name: "Pineapple Juice", alcohol?: false)
ice = Ingredient.create(name: "Ice", alcohol?: false)

#drink_ingredients#

#mojito
DrinkIngredient.create(drink_id: 1, ingredient: light_rum, quantity: "2-3 oz ")
DrinkIngredient.create(drink_id: 1, ingredient: lime, quantity: "Juice of 1 ")
DrinkIngredient.create(drink_id: 1, ingredient: sugar, quantity: "2 tsp ")
DrinkIngredient.create(drink_id: 1, ingredient: mint, quantity:"2-4")
DrinkIngredient.create(drink_id: 1, ingredient: soda_water, quantity: "2-3 oz")
#old fashion
DrinkIngredient.create(drink_id: 2, ingredient: bourbon, quantity: "4.5 cL")
DrinkIngredient.create(drink_id: 2, ingredient: angostura_bitter, quantity: "2 dashes")
DrinkIngredient.create(drink_id: 2, ingredient: sugar, quantity: "1 cube")
DrinkIngredient.create(drink_id: 2, ingredient: water, quantity: "dash")
#long island tea
DrinkIngredient.create(drink_id: 3, ingredient: vodka, quantity: "1/2 oz")
DrinkIngredient.create(drink_id: 3, ingredient: light_rum, quantity: "1/2 oz")
DrinkIngredient.create(drink_id: 3, ingredient: gin, quantity: "1/2 oz")
DrinkIngredient.create(drink_id: 3, ingredient: tequila, quantity:"1/2 oz")
DrinkIngredient.create(drink_id: 3, ingredient: lemon, quantity: "Juice of 1/2")
DrinkIngredient.create(drink_id: 3, ingredient: coca_cola, quantity: "1 splash")
#negroni
DrinkIngredient.create(drink_id: 4, ingredient: gin, quantity: "1 oz")
DrinkIngredient.create(drink_id: 4, ingredient: campari, quantity: "1 oz")
DrinkIngredient.create(drink_id: 4, ingredient: sweet_vermouth, quantity: "1 oz")
#Whiskey Sour
DrinkIngredient.create(drink_id: 5, ingredient: blended_whiskey, quantity: "2 oz ")
DrinkIngredient.create(drink_id: 5, ingredient: lemon, quantity: "Juice of 1/2 ")
DrinkIngredient.create(drink_id: 5, ingredient: powdered_sugar, quantity: "1/2 tsp ")
DrinkIngredient.create(drink_id: 5, ingredient: cherry, quantity: "1 ")
DrinkIngredient.create(drink_id: 5, ingredient: lemon, quantity: "1/2 slice ")
#dry martini
DrinkIngredient.create(drink_id: 6, ingredient: gin, quantity: "1 2/3 oz")
DrinkIngredient.create(drink_id: 6, ingredient: dry_vermouth, quantity: "1/3 oz")
DrinkIngredient.create(drink_id: 6, ingredient: olive, quantity:"1")
#Daiquiri
DrinkIngredient.create(drink_id: 7, ingredient: light_rum, quantity: "1 1/2 oz")
DrinkIngredient.create(drink_id: 7, ingredient: lime, quantity: "Juice of 1/2")
DrinkIngredient.create(drink_id: 7, ingredient: powdered_sugar, quantity: "1 tsp")
#margarita
DrinkIngredient.create(drink_id: 8, ingredient: tequila, quantity: "1 1/2 oz ")
DrinkIngredient.create(drink_id: 8, ingredient: triple_sec, quantity: "1/2 oz ")
DrinkIngredient.create(drink_id: 8, ingredient: lime_juice, quantity: "1 oz ")
DrinkIngredient.create(drink_id: 8, ingredient: salt, quantity: "On the rim")
#manhattan
DrinkIngredient.create(drink_id: 9, ingredient: sweet_vermouth, quantity: "3/4 oz")
DrinkIngredient.create(drink_id: 9, ingredient: bourbon, quantity: "2 1/2 oz Blended")
DrinkIngredient.create(drink_id: 9, ingredient: angostura_bitter, quantity: "dash")
DrinkIngredient.create(drink_id: 9, ingredient: ice, quantity: "2 or 3")
DrinkIngredient.create(drink_id: 9, ingredient: maraschino_cherry, quantity: "1")
DrinkIngredient.create(drink_id: 9, ingredient: orange_peel, quantity:"1 twist")
#moscow mule
DrinkIngredient.create(drink_id: 10, ingredient: vodka, quantity: "2 oz")
DrinkIngredient.create(drink_id: 10, ingredient: lime_juice, quantity:"2 oz")
DrinkIngredient.create(drink_id: 10, ingredient: ginger_ale, quantity: "8 oz")
#After Dinner Cocktail
DrinkIngredient.create(drink_id: 11, ingredient: apricot_brandy, quantity: "1 oz")
DrinkIngredient.create(drink_id: 11, ingredient: triple_sec, quantity: "1 oz")
DrinkIngredient.create(drink_id: 11, ingredient: lime, quantity: "1 juiced")
#After Supper Cocktail"
DrinkIngredient.create(drink_id: 12, ingredient: triple_sec, quantity: "1 oz")
DrinkIngredient.create(drink_id: 12, ingredient: apricot_brandy, quantity: "1 oz")
DrinkIngredient.create(drink_id: 12, ingredient: lemon_juice, quantity: "1/2 tsp")
#Alabama Slammer
DrinkIngredient.create(drink_id: 13, ingredient: southern_comfort, quantity: "1 oz")
DrinkIngredient.create(drink_id: 13, ingredient: amaretto, quantity: "1 oz")
DrinkIngredient.create(drink_id: 13, ingredient: sloe_gin, quantity: "1/2 oz")
DrinkIngredient.create(drink_id: 13, ingredient: lemon_juice, quantity: "1 dash")
#Alaska Cocktail
DrinkIngredient.create(drink_id: 14, ingredient: orange_bitter, quantity: "2 dashes")
DrinkIngredient.create(drink_id: 14, ingredient: gin, quantity: "1 1/2 oz")
DrinkIngredient.create(drink_id: 14, ingredient: yellow_chartreuse, quantity: "3/4 oz")
DrinkIngredient.create(drink_id: 14, ingredient: lemon_peel, quantity: "1 twist")
#Alexander
DrinkIngredient.create(drink_id: 15, ingredient: gin, quantity: "1/2 oz")
DrinkIngredient.create(drink_id: 15, ingredient: creme_de_cacao, quantity: "1/2 oz white")
DrinkIngredient.create(drink_id: 15, ingredient: light_cream, quantity: "2 oz")
DrinkIngredient.create(drink_id: 15, ingredient: nutmeg, quantity: "Garnish")
#Brandy Alexander
DrinkIngredient.create(drink_id: 16, ingredient: brandy, quantity: "1 oz")
DrinkIngredient.create(drink_id: 16, ingredient: creme_de_cacao, quantity: "1 oz")
DrinkIngredient.create(drink_id: 16, ingredient: light_cream, quantity: "1 oz")
DrinkIngredient.create(drink_id: 16, ingredient: nutmeg, quantity: "Garnish")
#Alfie Cocktail
DrinkIngredient.create(drink_id: 17, ingredient: lemon_vodka, quantity: "1 1/2 oz")
DrinkIngredient.create(drink_id: 17, ingredient: triple_sec, quantity: "1 dash")
DrinkIngredient.create(drink_id: 17, ingredient: pineapple_juice, quantity: "1 tblsp")
#Algonquin
DrinkIngredient.create(drink_id: 18, ingredient: blended_whiskey, quantity: "1 1/2 oz")
DrinkIngredient.create(drink_id: 18, ingredient: dry_vermouth, quantity: "1 oz")
DrinkIngredient.create(drink_id: 18, ingredient: pineapple_juice, quantity: "1 oz")
#Allegheny
DrinkIngredient.create(drink_id: 19, ingredient: dry_vermouth, quantity: "1 oz")
DrinkIngredient.create(drink_id: 19, ingredient: bourbon, quantity: "1 oz")
DrinkIngredient.create(drink_id: 19, ingredient: blackberry_brandy, quantity: "1 1/2 tsp")
DrinkIngredient.create(drink_id: 19, ingredient: lemon_juice, quantity: "1 1/2 tsp")
DrinkIngredient.create(drink_id: 19, ingredient: lemon_peel, quantity: "1 twist")
#Allies Cocktail
DrinkIngredient.create(drink_id: 20, ingredient: dry_vermouth, quantity: "1 oz")
DrinkIngredient.create(drink_id: 20, ingredient: gin, quantity: "1 oz")
DrinkIngredient.create(drink_id: 20, ingredient: kummel, quantity: "1/2 tsp")
