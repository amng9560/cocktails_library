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
            Drink.stop_music
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
                #system("imgcat ./lib/pics/vodka.png")
                Drink.vodka
            when "Gin"
                #system("imgcat ./lib/pics/gin.png")
                Drink.gin
            when "Whiskey"
                #system("imgcat ./lib/pics/whiskey.jpg")
                Drink.whiskey
            when "Tequila"
                #system("imgcat ./lib/pics/tequila.png")
                Drink.tequila
            when "Rum"
                #system("imgcat ./lib/pics/rum.png")
                Drink.rum
            when "Vermouth"
                #system("imgcat ./lib/pics/vermouth.png")
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
            Drink.stop_music
            abort ("Thank you for visiting the Cocktail Library!")
        else
            system "clear"
            main_page
        end
    end
end