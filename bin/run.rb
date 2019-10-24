require "require_all"
require_relative "../config/environment"

require_all "lib"

ActiveRecord::Base.logger = nil

system "clear"
Application.age_confirmation
system "clear"
Application.enter_username
system "clear"
start_animation
system "clear"
Application.main_page
