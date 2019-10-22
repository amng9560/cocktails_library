require "require_all"
require_relative "../config/environment"

require_all "lib"

system "clear"
Application.age_confirmation
system "clear"
Application.menu

