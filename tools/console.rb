require 'pry'

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("sarah")
g2 = Guest.new("john")
g3 = Guest.new("bob")
g4 = Guest.new("sarah")

l1 = Listing.new("new york")
l2 = Listing.new("san fran")
l3 = Listing.new("baltimore")
l4 = Listing.new("new york")

t1 = Trip.new("beach", l1, g1)
t2 = Trip.new("camp", l2, g2)
t3 = Trip.new("girls", l3, g1)
t4 = Trip.new("beach", l3, g4)
binding.pry

0
