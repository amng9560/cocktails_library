class Favorite < ActiveRecord::Base
    belongs_to :user
    belongs_to :drink

    @@prompt = TTY::Prompt.new(symbols: {marker: '🍸'})

    def self.tty_prompt
      @@prompt
    end

    def self.add_favorite
        system "clear"
        response = @@prompt.select("Would you like to add a drink to your favorites?", Drink.all.map(&:name))
        create(user: Application.current_user, drink: Drink.find_by(name: response))
        puts ""
        Application.exit_option
    end

    def self.see_favorites
        system "clear"
        puts "Here are your favorites! Remember to keep it classy!"
        puts ""
        current_user = Application.current_user
        self.all.select do |favorite|
            favorite.user == current_user
        end.each { |favorite| puts favorite.drink.name}
        puts ""
        Application.exit_option
    end
end