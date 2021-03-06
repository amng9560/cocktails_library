require 'rest-client'
require 'json'
url = RestClient.get("https://www.thecocktaildb.com/api/json/v2/1/popular.php")
cocktail_list = JSON.parse(url)

# Drink.delete_all
# Ingredient.delete_all

# cocktail_list["drinks"].map do |drink|
#     Drink.create(name: drink["strDrink"])
# end

#drinks#

mojito = Drink.create(name: "Mojito", instructions: "Muddle mint leaves with sugar and lime juice.\nAdd a splash of soda water and fill the glass with cracked ice.\nPour the rum and top with soda water.\nGarnish and serve with straw.")
old_fashioned = Drink.create(name: "Old Fashioned", instructions: "Place sugar cube in old fashioned glass\nand saturate with bitters, add a dash of plain water.\nMuddle until dissolved.\nFill the glass with ice cubes and add whiskey.\nGarnish with orange twist,\nand a cocktail cherry.")
long_island_tea = Drink.create(name: "Long Island Tea", instructions: "Combine all ingredients (except cola)\nand pour over ice in a highball glass.\nAdd the splash of cola for color.\nDecorate with a slice of lemon and serve.")
negroni = Drink.create(name: "Negroni", instructions: "Stir into glass over ice,\ngarnish and serve.")
whiskey_sour = Drink.create(name: "Whiskey Sour", instructions: "Shake with ice. Strain into chilled glass,\ngarnish and serve.\nIf served 'On the rocks',\nstrain ingredients into old-fashioned glass filled with ice.")
dry_martini = Drink.create(name: "Dry Martini", instructions: "Straight: Pour all ingredients into mixing glass with ice cubes.\nStir well.\nStrain in chilled martini cocktail glass.\nSqueeze oil from lemon peel onto the drink,\nor garnish with olive.")
daiquiri = Drink.create(name: "Daiquiri", instructions: "Pour all ingredients into shaker with ice cubes. \n Shake well. Strain in chilled cocktail glass.")
margarita = Drink.create(name: "Margarita", instructions: "Rub the rim of the glass with the lime slice to make the salt stick to it.\nTake care to moisten only the outer rim and sprinkle the salt on it.\nThe salt should present to the lips of the imbiber\nand never mix into the cocktail.\nShake the other ingredients with ice,\nthen carefully pour into the glass.")
manhattan = Drink.create(name: "Manhattan", instructions: "Stirred over ice,\nstrained into a chilled glass,\ngarnished, and served up.")
moscow_mule = Drink.create(name: "Moscow Mule", instructions: "Combine vodka and ginger beer in a highball glass filled with ice.\nAdd lime juice. Stir gently.\nGarnish.")
after_dinner_cocktail = Drink.create(name: "After Dinner Cocktail", instructions: "Shake all ingredients (except lime wedge)\nwith ice and strain into a cocktail glass.\nAdd the wedge of lime and serve.")
after_supper_cocktail = Drink.create(name: "After Supper Cocktail", instructions: "Shake all ingredients with ice,\nstrain into a cocktail glass,\nand serve.")
alabama_slammer = Drink.create(name: "Alabama Slammer", instructions: "Pour all ingredients (except for lemon juice)\nover ice in a highball glass.\nStir, add a dash of lemon juice, and serve.")
alaska_cocktail = Drink.create(name: "Alaska Cocktail", instructions: "Stir all ingredients with ice,\nstrain contents into a cocktail glass.\nDrop in a twist of lemon and serve.")
alexander = Drink.create(name: "Alexander", instructions: "Shake all ingredients with ice and\nstrain contents into a cocktail glass.\nSprinkle nutmeg on top and serve.")
brandy_alexander = Drink.create(name: "Brandy Alexander", instructions: "Shake all ingredients (except nutmeg)\nwith ice and strain contents into a cocktail glass.\nSprinkle nutmeg on top and serve.")
alfie_cocktail = Drink.create(name: "Alfie Cocktail", instructions: "Combine and shake all ingredients with ice,\nstrain into a cocktail glass, and serve.")
algonquin = Drink.create(name: "Algonquin", instructions: "Combine and shake all ingredients with ice,\nstrain contents into a cocktail glass, and serve.")
allegheny = Drink.create(name: "Allegheny", instructions: "Shake all ingredients (except lemon peel)\nwith ice and strain into a cocktail glass.\nTop with the twist of lemon peel and serve.")
allies_cocktail = Drink.create(name: "Allies Cocktail", instructions: "Stir all ingredients with ice,\nstrain contents into a cocktail glass, and serve.")


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
DrinkIngredient.create(drink: mojito, ingredient: light_rum, quantity: "2-3 oz ")
DrinkIngredient.create(drink: mojito, ingredient: lime, quantity: "Juice of mojito ")
DrinkIngredient.create(drink: mojito, ingredient: sugar, quantity: "2 tsp ")
DrinkIngredient.create(drink: mojito, ingredient: mint, quantity:"2-4")
DrinkIngredient.create(drink: mojito, ingredient: soda_water, quantity: "2-3 oz")
#old fashion
DrinkIngredient.create(drink: old_fashioned, ingredient: bourbon, quantity: "4.5 cL")
DrinkIngredient.create(drink: old_fashioned, ingredient: angostura_bitter, quantity: "old_fashioned dashes")
DrinkIngredient.create(drink: old_fashioned, ingredient: sugar, quantity: "1 cube")
DrinkIngredient.create(drink: old_fashioned, ingredient: water, quantity: "dash")
#long island tea
DrinkIngredient.create(drink: long_island_tea, ingredient: vodka, quantity: "1/2 oz")
DrinkIngredient.create(drink: long_island_tea, ingredient: light_rum, quantity: "1/2 oz")
DrinkIngredient.create(drink: long_island_tea, ingredient: gin, quantity: "1/2 oz")
DrinkIngredient.create(drink: long_island_tea, ingredient: tequila, quantity:"1/2 oz")
DrinkIngredient.create(drink: long_island_tea, ingredient: lemon, quantity: "Juice of 1/2")
DrinkIngredient.create(drink: long_island_tea, ingredient: coca_cola, quantity: "1 splash")
#negroni
DrinkIngredient.create(drink: negroni, ingredient: gin, quantity: "1 oz")
DrinkIngredient.create(drink: negroni, ingredient: campari, quantity: "1 oz")
DrinkIngredient.create(drink: negroni, ingredient: sweet_vermouth, quantity: "1 oz")
#Whiskey Sour
DrinkIngredient.create(drink: whiskey_sour, ingredient: blended_whiskey, quantity: "2 oz ")
DrinkIngredient.create(drink: whiskey_sour, ingredient: lemon, quantity: "Juice of 1/2 ")
DrinkIngredient.create(drink: whiskey_sour, ingredient: powdered_sugar, quantity: "1/2 tsp ")
DrinkIngredient.create(drink: whiskey_sour, ingredient: cherry, quantity: "1 ")
DrinkIngredient.create(drink: whiskey_sour, ingredient: lemon, quantity: "1/2 slice ")
#dry martini
DrinkIngredient.create(drink: dry_martini, ingredient: gin, quantity: "1 2/3 oz")
DrinkIngredient.create(drink: dry_martini, ingredient: dry_vermouth, quantity: "1/3 oz")
DrinkIngredient.create(drink: dry_martini, ingredient: olive, quantity:"1")
#Daiquiri
DrinkIngredient.create(drink: daiquiri, ingredient: light_rum, quantity: "1 1/2 oz")
DrinkIngredient.create(drink: daiquiri, ingredient: lime, quantity: "Juice of 1/2")
DrinkIngredient.create(drink: daiquiri, ingredient: powdered_sugar, quantity: "1 tsp")
#margarita
DrinkIngredient.create(drink: margarita, ingredient: tequila, quantity: "1 1/2 oz ")
DrinkIngredient.create(drink: margarita, ingredient: triple_sec, quantity: "1/2 oz ")
DrinkIngredient.create(drink: margarita, ingredient: lime_juice, quantity: "1 oz ")
DrinkIngredient.create(drink: margarita, ingredient: salt, quantity: "On the rim")
#manhattan
DrinkIngredient.create(drink: manhattan, ingredient: sweet_vermouth, quantity: "3/4 oz")
DrinkIngredient.create(drink: manhattan, ingredient: bourbon, quantity: "2 1/2 oz Blended")
DrinkIngredient.create(drink: manhattan, ingredient: angostura_bitter, quantity: "dash")
DrinkIngredient.create(drink: manhattan, ingredient: ice, quantity: "2 or 3")
DrinkIngredient.create(drink: manhattan, ingredient: maraschino_cherry, quantity: "1")
DrinkIngredient.create(drink: manhattan, ingredient: orange_peel, quantity:"1 twist")
#moscow mule
DrinkIngredient.create(drink: moscow_mule, ingredient: vodka, quantity: "2 oz")
DrinkIngredient.create(drink: moscow_mule, ingredient: lime_juice, quantity:"2 oz")
DrinkIngredient.create(drink: moscow_mule, ingredient: ginger_ale, quantity: "8 oz")
#After Dinner Cocktail
DrinkIngredient.create(drink: after_dinner_cocktail, ingredient: apricot_brandy, quantity: "1 oz")
DrinkIngredient.create(drink: after_dinner_cocktail, ingredient: triple_sec, quantity: "1 oz")
DrinkIngredient.create(drink: after_dinner_cocktail, ingredient: lime, quantity: "1 juiced")
#After Supper Cocktail"
DrinkIngredient.create(drink: after_supper_cocktail, ingredient: triple_sec, quantity: "1 oz")
DrinkIngredient.create(drink: after_supper_cocktail, ingredient: apricot_brandy, quantity: "1 oz")
DrinkIngredient.create(drink: after_supper_cocktail, ingredient: lemon_juice, quantity: "1/2 tsp")
#Alabama Slammer
DrinkIngredient.create(drink: alabama_slammer, ingredient: southern_comfort, quantity: "1 oz")
DrinkIngredient.create(drink: alabama_slammer, ingredient: amaretto, quantity: "1 oz")
DrinkIngredient.create(drink: alabama_slammer, ingredient: sloe_gin, quantity: "1/2 oz")
DrinkIngredient.create(drink: alabama_slammer, ingredient: lemon_juice, quantity: "1 dash")
#Alaska Cocktail
DrinkIngredient.create(drink: alaska_cocktail, ingredient: orange_bitter, quantity: "2 dashes")
DrinkIngredient.create(drink: alaska_cocktail, ingredient: gin, quantity: "1 1/2 oz")
DrinkIngredient.create(drink: alaska_cocktail, ingredient: yellow_chartreuse, quantity: "3/4 oz")
DrinkIngredient.create(drink: alaska_cocktail, ingredient: lemon_peel, quantity: "1 twist")
#Alexander
DrinkIngredient.create(drink: alexander, ingredient: gin, quantity: "1/2 oz")
DrinkIngredient.create(drink: alexander, ingredient: creme_de_cacao, quantity: "1/2 oz white")
DrinkIngredient.create(drink: alexander, ingredient: light_cream, quantity: "2 oz")
DrinkIngredient.create(drink: alexander, ingredient: nutmeg, quantity: "Garnish")
#Brandy Alexander
DrinkIngredient.create(drink: brandy_alexander, ingredient: brandy, quantity: "1 oz")
DrinkIngredient.create(drink: brandy_alexander, ingredient: creme_de_cacao, quantity: "1 oz")
DrinkIngredient.create(drink: brandy_alexander, ingredient: light_cream, quantity: "1 oz")
DrinkIngredient.create(drink: brandy_alexander, ingredient: nutmeg, quantity: "Garnish")
#Alfie Cocktail
DrinkIngredient.create(drink: alfie_cocktail, ingredient: lemon_vodka, quantity: "1 1/2 oz")
DrinkIngredient.create(drink: alfie_cocktail, ingredient: triple_sec, quantity: "1 dash")
DrinkIngredient.create(drink: alfie_cocktail, ingredient: pineapple_juice, quantity: "1 tblsp")
#Algonquin
DrinkIngredient.create(drink: algonquin, ingredient: blended_whiskey, quantity: "1 1/2 oz")
DrinkIngredient.create(drink: algonquin, ingredient: dry_vermouth, quantity: "1 oz")
DrinkIngredient.create(drink: algonquin, ingredient: pineapple_juice, quantity: "1 oz")
#Allegheny
DrinkIngredient.create(drink: allegheny, ingredient: dry_vermouth, quantity: "1 oz")
DrinkIngredient.create(drink: allegheny, ingredient: bourbon, quantity: "1 oz")
DrinkIngredient.create(drink: allegheny, ingredient: blackberry_brandy, quantity: "1 1/2 tsp")
DrinkIngredient.create(drink: allegheny, ingredient: lemon_juice, quantity: "1 1/2 tsp")
DrinkIngredient.create(drink: allegheny, ingredient: lemon_peel, quantity: "1 twist")
#Allies Cocktail
DrinkIngredient.create(drink: allies_cocktail, ingredient: dry_vermouth, quantity: "1 oz")
DrinkIngredient.create(drink: allies_cocktail, ingredient: gin, quantity: "1 oz")
DrinkIngredient.create(drink: allies_cocktail, ingredient: kummel, quantity: "1/2 tsp")
