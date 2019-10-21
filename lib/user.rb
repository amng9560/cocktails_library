class Use
    @@interface = TTY::Prompt.new

    def self.main_menu_sign_in
      puts "Sign in/create an account: "
      user_input = @@interface.ask("username:")
      User.find_or_create_by(name: user_input)
    end
end