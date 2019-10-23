class Application

    @@prompt = TTY::Prompt.new
    @@username = nil
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


      
    def self.enter_username
        puts 'Enter Username'
        @@username = gets.chomp
    end

   

   
   
    def self.menu
        tty_prompt

        choice = "Pick your poison!"

        output = ["Vodka",  
                    "Gin", 
                "Whiskey", 
                "Tequila", 
                    "Rum", 
                "Vermouth", 
                    "Exit"]

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
                system "clear"
                exit_option
        end
    end

    def self.exit_option
        response = @@prompt.select("Would you like to return to the main Menu?", ["Yes", "No"])
        if response == "Yes"
            system "clear"
            menu
        else
            system "clear"
            abort ("Thank you for visiting the Cocktail Library!")
        end
    end    
end