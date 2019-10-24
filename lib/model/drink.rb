class Drink < ActiveRecord::Base
  has_many :drink_ingredient
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

  def self.long_island_tea
    puts ingredients_and_quantity("Long Island Tea")
    puts ""
    puts instructions("Long Island Tea")
  end

  def self.negroni
    puts ingredients_and_quantity("Negroni")
    puts ""
    puts instructions("Negroni")
  end
  
  def self.dry_martini
    puts ingredients_and_quantity("Dry Martini")
    puts ""
    puts instructions("Dry Martini")
  end

  def self.alabama_slammer
    puts ingredients_and_quantity("Alabama Slammer")
    puts ""
    puts instructions("Alabama Slammer")
  end

  def self.margarita
    puts ingredients_and_quantity("Margarita")
    puts ""
    puts instructions("Margarita")
  end

  def self.manhattan
    puts ingredients_and_quantity("Manhattan")
    puts ""
    puts instructions("Manhattan")
  end

  def self.algonquin
    puts ingredients_and_quantity("Algonquin")
    puts ""
    puts instructions("Algonquin")
  end

  def self.allegheny
    puts ingredients_and_quantity("Allegheny")
    puts ""
    puts instructions("Allegheny")
  end

  def self.daiquiri
    puts ingredients_and_quantity("Daiquiri")
    puts ""
    puts instructions("Daiquiri")
  end

  def self.old_fashioned
    puts ingredients_and_quantity("Old Fashioned")
    puts ""
    puts instructions("Old Fashioned")
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
        long_island_tea
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
        long_island_tea
      when "Negroni"
        system "clear"
        negroni
      when "Dry Martini"
        system "clear"
        dry_martini
      when "Alabama Slammer"
        system "clear"
        alabama_slammer
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
        long_island_tea
      when "Margarita"
        system "clear"
        margarita
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
        negroni
      when "Dry Martini"
        system "clear"
        dry_martini
      when "Manhattan"
        system "clear"
        manhattan
      when "Algonquin"
        system "clear"
        algonquin
      when "Allegheny"
        system "clear"
        allegheny
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
        long_island_tea
      when "Daiquiri"
        system "clear"
        daiquiri
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
        old_fashioned
      when "Whiskey Sour"
        system "clear"
        puts ingredients_and_quantity("Whiskey Sour")
        puts ""
        puts instructions("Whiskey Sour")
      when "Manhattan"
        system "clear"
        manhattan
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
        alabama_slammer
      when "Brandy Alexander"
        system "clear"
        puts ingredients_and_quantity("Brandy Alexander")
        puts ""
        puts instructions("Brandy Alexander")
      when "Algonquin"
        system "clear"
        algonquin
      when "Allegheny"
        system "clear"
        allegheny
    end
    puts ""
    Application.exit_option
  end

  def self.recommended
    selection = ["Long Island Tea", "Dry Martini", "Margarita", "Daiquiri", "Old Fashioned"]
    response = @@prompt.select("There are the recommended drinks!".yellow, selection)

    case response
      when "Long Island Tea"
        system "clear"
        long_island_tea
      when "Dry Martini"
        system "clear"
        dry_martini
      when "Margarita"
        system "clear"
        margarita
      when "Daiquiri"
        system "clear"
        daiquiri
      when "Old Fashioned"
        system "clear"
        old_fashioned
    end
    puts ""
    Application.exit_option
  end
end