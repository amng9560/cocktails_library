class Application

    @@prompt = TTY::Prompt.new

    def self.tty_prompt
        @@prompt
    end

    def self.age_confirmation
        puts "Welcome to the Cocktail Library!!!"
        
        response = @@prompt.select("Are you at least 21 years old age?", ["Yes", "No"])
    
        if response == "Yes"
            system "clear"
            puts "Come look at our cocktail selection!!!"
        else 
            system "clear"
            puts "You're not old enough!"
            exit
        end
    end

    def self.menu
        tty_prompt

        choice = "Pick your poison!"

        output = ["Vodka",
        #system("imgcat ./lib/pics/Vodka.jpeg"),  
                    "Gin", 
                "Whiskey", 
                "Tequila", 
                    "Rum", 
                "Vermouth", 
                    "Others"]

        response = @@prompt.select(choice, output)
        case response
            when "Vodka"
                system "clear"
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
                "Look at the list and choose from there please."
        end
    end
end