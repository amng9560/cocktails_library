class Application

    @@prompt = TTY::Prompt.new

    @@username = nil

    def self.tty_prompt
        @@prompt
    end

    def self.age_confirmation
        puts "Welcome to the Cocktail Library!!!"
        
        response = @@prompt.select("Are you at least 21 years old age?".red, ["Yes", "No"])
    
        if response == "Yes"
            system "clear"
        else 
            system "clear"
            puts "You're not old enough!"
            exit
        end
    end
      
    def self.enter_username
        puts 'Enter Username'
        @@username = gets.chomp
    end

    def self.main_page
        output = ["Recommended",
                    "Spirits",
                    "Exit"]

        response = @@prompt.select("What would you like to select?", output)

        case response
            when "Recommended"
                system "clear"
                Drink.recommended
            when "Spirits"
                system "clear"
                menu
            else
                system "clear"
                exit_option
        end
    end
    
    def self.menu
        puts "Come look at our cocktail selection!!!"

        output = ["Vodka",  
                    "Gin", 
                "Whiskey", 
                "Tequila", 
                    "Rum", 
                "Vermouth", 
                    "Exit"]

        response = @@prompt.select("Pick your poison!".green, output, active_color: :cyan)
        case response
            when "Vodka"
                system "clear"
                system("imgcat ./pics/Vodka.jpeg")
                Drink.vodka
            when "Gin"
                system "clear"
                Drink.gin
            when "Whiskey"
                system "clear"
                Drink.whiskey
            when "Tequila"
                system "clear"
                Drink.tequila
            when "Rum"
                system "clear"
                Drink.rum
            when "Vermouth"
                system "clear"
                Drink.vermouth
            else
                system "clear"
                exit_option
        end
    end

    def self.exit_option
        option = ["Yes", "No"]
        response = @@prompt.select("Would you like to exit the Cocktail Librabry?", option, active_color: :red)
        if response == "Yes"
            system "clear"
            abort ("Thank you for visiting the Cocktail Library!")
        else
            system "clear"
            main_menu
        end
    end
end