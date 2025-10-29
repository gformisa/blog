ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__) # Set the bundle gemfile to the Gemfile in the current directory.

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.
