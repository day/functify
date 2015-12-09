require_relative "../functify.rb"
require "rspec"
# FUNCTIFY v0.0.1
# Given a hash, adds a function for each key in the hash which returns the value
# for that key at the time it was functified. E.g. {:a => 1}.functify.a == 1