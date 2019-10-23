class Drink < ActiveRecord::Base
  has_many :ingredient, through: :drink_ingredient

  @@prompt = TTY::Prompt.new

  def self.tty_prompt
    @@prompt
  end

  def self.ingredients_and_quantity(selected_drink)
    puts "Ingredients and amounts:".light_yellow
    instances = DrinkIngredient.all.select{|drink| drink.drink.name == selected_drink}
    instances.map{|drink| drink.quantity + " " + drink.ingredient.name}
  end

  def self.instructions(selected_drink)
    puts "Instructions:".light_yellow
    drink_name = Drink.all.select{|drink| drink.name == selected_drink}
    drink_name.map(&:instructions)
  end

  def self.select_spirit_and_name(spirit_name)
    spirit = DrinkIngredient.all.select{|drink| drink.ingredient.name.include?(spirit_name) && drink.ingredient.alcohol? == true}
    spirit.map{|drink_name| drink_name.drink.name}
  end

  def self.vodka
    selection = select_spirit_and_name("odka")
    choice = "Here are your choices!"

    system "clear"

    # system("imgcat ../pics/Vodka.jpeg")

    response = @@prompt.select(choice, selection, active_color: :bright_blue)
    case response
      when "Long Island Tea"
        system "clear"
        puts ingredients_and_quantity("Long Island Tea")
        puts ""
        puts instructions("Long Island Tea")
      when "Moscow Mule"
        system "clear"
        puts ingredients_and_quantity("Moscow Mule")
        puts ""
        puts instructions("Moscow Mule")
      when "Alfie Cocktail"
        system "clear"
        puts ingredients_and_quantity("Alfie Cocktail")
        puts ""
        puts instructions("Alfie Cocktail")
    end
    puts ""
    Application.exit_option
  end

  def self.gin
    selection = select_spirit_and_name("Gin")
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection)
    case response
      when "Long Island Tea"
        system "clear"
        puts ingredients_and_quantity("Long Island Tea")
        puts ""
        puts instructions("Long Island Tea")
      when "Negroni"
        system "clear"
        puts ingredients_and_quantity("Negroni")
        puts ""
        puts instructions("Negroni")
      when "Dry Martini"
        system "clear"
        puts ingredients_and_quantity("Dry Martini")
        puts ""
        puts instructions("Dry Martini")
      when "Alabama Slammer"
        system "clear"
        puts ingredients_and_quantity("Alabama Slammer")
        puts ""
        puts instructions("Alabama Slammer")
      when "Alaska Cocktail"
        system "clear"
        puts ingredients_and_quantity("Alaska Cocktail")
        puts ""
        puts instructions("Alaska Cocktail")
      when "Alexander"
        system "clear"
        puts ingredients_and_quantity("Alexander")
        puts ""
        puts instructions("Alexander")
      when "Allies Cocktail"
        system "clear"
        puts ingredients_and_quantity("Allies Cocktail")
        puts ""
        puts instructions("Allies Cocktail")
    end
    puts ""
    Application.exit_option
  end

  def self.tequila
    selection = select_spirit_and_name("Tequila")
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection, active_color: :yellow)
    case response
      when "Long Island Tea"
        system "clear"
        puts ingredients_and_quantity("Long Island Tea")
        puts ""
        puts instructions("Long Island Tea")
      when "Margarita"
        system "clear"
        puts ingredients_and_quantity("Margarita")
        puts ""
        puts instructions("Margarita")
    end
    puts ""
    Application.exit_option
  end

  def self.vermouth
    selection = select_spirit_and_name("Vermouth")
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection)
    case response
      when "Negroni"
        system "clear"
        puts ingredients_and_quantity("Negroni")
        puts ""
        puts instructions("Negroni")
      when "Dry Martini"
        system "clear"
        puts ingredients_and_quantity("Dry Martini")
        puts ""
        puts instructions("Dry Martini")
      when "Manhattan"
        system "clear"
        puts ingredients_and_quantity("Manhattan")
        puts ""
        puts instructions("Manhattan")
      when "Algonquin"
        system "clear"
        puts ingredients_and_quantity("Algonquin")
        puts ""
        puts instructions("Algonquin")
      when "Allegheny"
        system "clear"
        puts ingredients_and_quantity("Allegheny")
        puts ""
        puts instructions("Allegheny")
      when "Allies Cocktail"
        system "clear"
        puts ingredients_and_quantity("Allies Cocktail")
        puts ""
        puts instructions("Allies Cocktail")
    end
    puts ""
    Application.exit_option
  end

  def self.rum
    selection = select_spirit_and_name("Light Rum")
    choice = "Here are your choices!"

    system "clear"
    response = @@prompt.select(choice, selection)
    case response
      when "Mojito"
        system "clear"
        puts ingredients_and_quantity("Mojito")
        puts ""
        puts instructions("Mojito")
      when "Long Island Tea"
        system "clear"
        puts ingredients_and_quantity("Long Island Tea")
        puts ""
        puts instructions("Long Island Tea")
      when "Daiquiri"
        system "clear"
        puts ingredients_and_quantity("Daiquiri")
        puts ""
        puts instructions("Daiquiri")
    end
    puts ""
    Application.exit_option
  end

  def self.whiskey
    whiskey_drink = DrinkIngredient.all.select do |drink| 
      drink.ingredient.name.include?("Whiskey") || drink.ingredient.name.include?("Brandy") || drink.ingredient.name.include?("Bourbon") 
    end
    selection = whiskey_drink.map{|drink_name| drink_name.drink.name}
    choice = "Here are your choices!"
    
    system "clear"
    response = @@prompt.select(choice, selection, active_color: :bright_red)

    case response
      when "Old Fashioned"
        system "clear"
        puts ingredients_and_quantity("Old Fashioned")
        puts ""
        puts instructions("Old Fashioned")
      when "Whiskey Sour"
        system "clear"
        puts ingredients_and_quantity("Whiskey Sour")
        puts ""
        puts instructions("Whiskey Sour")
      when "Manhattan"
        system "clear"
        puts ingredients_and_quantity("Manhattan")
        puts ""
        puts instructions("Manhattan")
      when "After Dinner Cocktail"
        system "clear"
        puts ingredients_and_quantity("After Dinner Cocktail")
        puts ""
        puts instructions("After Dinner Cocktail")
      when "After Supper Cocktail"
        system "clear"
        puts ingredients_and_quantity("After Supper Cocktail")
        puts ""
        puts instructions("After Supper Cocktail")
      when "Alabama Slammer"
        system "clear"
        puts ingredients_and_quantity("Alabama Slammer")
        puts ""
        puts instructions("Alabama Slammer")
      when "Brandy Alexander"
        system "clear"
        puts ingredients_and_quantity("Brandy Alexander")
        puts ""
        puts instructions("Brandy Alexander")
      when "Algonquin"
        system "clear"
        puts ingredients_and_quantity("Algonquin")
        puts ""
        puts instructions("Algonquin")
      when "Allegheny"
        system "clear"
        puts ingredients_and_quantity("Allegheny")
        puts ""
        puts instructions("Allegheny")
    end
    puts ""
    Application.exit_option
  end
end