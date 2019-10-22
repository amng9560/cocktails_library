class Drink < ActiveRecord::Base
  has_many :ingredient, through: :drink_ingredient

  @@prompt = TTY::Prompt.new

  def self.tty_prompt
    @@prompt
  end

  def self.vodka
    vodka_drink = DrinkIngredient.all.select{|drink| drink.ingredient.name.include?("odka")}
    selection = vodka_drink.map{|drink_name| drink_name.drink.name}
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection)
    case response
      when "Long Island Tea"
      when "Moscow Mule"
      when "Alfie Cocktail"
    end
  end

  def self.gin
    gin = DrinkIngredient.all.select{|drink| drink.ingredient.name.include?("Gin") && drink.ingredient.alcohol? == true}
    selection = gin_drink.map{|drink_name| drink_name.drink.name}
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection)
    case response
      when "Long Island Tea"
      when "Negroni"
      when "Dry Martini"
      when "Alabama Slammer"
      when "Alaska Cocktail"
      when "Alexander"
      when "Allies Cocktail"
    end
  end

  def self.tequila
    tequila_drink = DrinkIngredient.all.select{|drink| drink.ingredient.name.include?("Tequila")}
    selection = tequila_drink.map{|drink_name| drink_name.drink.name}
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection)
    case response
      when "Long Island Tea"
      when "Margarita"
    end
  end

  def self.vermouth
    vermouth_drink = DrinkIngredient.all.select{|drink| drink.ingredient.name.include?("Vermouth")}
    selection = vermouth_drink.map{|drink_name| drink_name.drink.name}
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection)
    case response
      when "Negroni"
      when "Dry Martini"
      when "Manhattan"
      when "Algonquin"
      when "Allegheny"
      when "Allies Cocktail"
    end
  end

  def self.rum
    rum_drink = DrinkIngredient.all.select{|drink| drink.ingredient.name.include?("Light Rum")}
    selection = rum_drink.map{|drink_name| drink_name.drink.name}
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection)
    case response
      when "Mojito"
      when "Long Island Tea"
      when "Manhattan"
    end
  end

  def self.whiskey
    whiskey_drink = DrinkIngredient.all.select do |drink| 
      drink.ingredient.name.include?("Whiskey") || drink.ingredient.name.include?("Brandy") || drink.ingredient.name.include?("Bourbon") 
    end
    selection = whiskey_drink.map{|drink_name| drink_name.drink.name}
    choice = "Here are your choices!"
    
    system "clear"
    response = @@prompt.select(choice, selection)

    case response
      when "Old Fashion"
      when "Whiskey Sour"
      when "Manhattan"
      when "After Dinner Cocktail"
      when "After Supper Cocktail"
      when "Alabama Slammer"
      when "Brandy Alexander"
      when "Algonquin"
      when "Allegheny"
    end
  end
end