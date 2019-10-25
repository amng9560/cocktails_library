class Application
    attr_reader :user
    @@prompt = TTY::Prompt.new(symbols: {marker: '🍸'})

    def initialize(user)
        @user = nil
    end
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
            system("imgcat ./lib/pics/police_picture.jpg")
            Drink.stop_music
            exit
        end
    end
      
    def self.enter_username
            response = @@prompt.select("Sign-in or Log in?", ["Sign-in!", "Log in!"], active_color: :magenta)
        
            if response == "Sign-in!"
                user = @@prompt.ask("What is your name?")
                User.create(name: user)
            else 
                user = @@prompt.select("Select your User Name:", User.all.map(&:name))
            end 
        @user = User.find_by(name: user)
    end

     def self.current_user
        @user
     end

    def self.main_page
        output = ["Recommended",
                    "Add to Favorites",
                    "Favorites",
                    "Spirits",
                    "Exit"]

        response = @@prompt.select("What would you like to select?", output)

        case response
            when "Recommended"
                system "clear"
                Drink.recommended
            when "Add to Favorites"
                system "clear"
                Favorite.add_favorite
            when "Favorites"
                system "clear"
                Favorite.see_favorites
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
            system("imgcat ./lib/pics/barfing_pumpkin.jpg")
            abort ("Thank you for visiting the Cocktail Library!".yellow)
        else
            system "clear"
            main_page
        end
    end
end