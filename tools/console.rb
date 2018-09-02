require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

def names(arr)
  arr.map { |x| x.name }
end

## Airbnb

# nyc1 = Listing.new("NYC")
# nyc2 = Listing.new("NYC")
# nyc3 = Listing.new("NYC")
# tok1 = Listing.new("Tokyo")
# tok2 = Listing.new("Tokyo")
# gla1 = Listing.new("Glasgow")
# ber1 = Listing.new("Berlin")
#
# g1 = Guest.new("Anna")
# g2 = Guest.new("Beth")
# g3 = Guest.new("Chad")
# g4 = Guest.new("Drew")
#
# t1 = Trip.new(nyc1, g1)
# t2 = Trip.new(nyc2, g1)
# t3 = Trip.new(nyc1, g3)
# t4 = Trip.new(tok1, g4)
# t5 = Trip.new(gla1, g4)
# t6 = Trip.new(ber1, g2)

## Bakery
#
# b1 = Bakery.new("Magnolia")
# b2 = Bakery.new("Dominique Ansel")
# b3 = Bakery.new("Momofuku")
#
# d1 = Dessert.new("Cupcake", b1)
# d2 = Dessert.new("Cronut", b2)
# d3 = Dessert.new("Chocolate chip cookie", b2)
# d4 = Dessert.new("Cereal milk", b3)
# d5 = Dessert.new("Compost cookie", b3)
#
# i1 = Ingredient.new("Flour", d1, 50)
# i2 = Ingredient.new("Sugar", d1, 100)
# i3 = Ingredient.new("Eggs", d1, 200)
#
# i4 = Ingredient.new("Butter", d2, 80)
# i5 = Ingredient.new("Cream", d2, 70)
# i6 = Ingredient.new("Pastry", d2, 150)
#
# i7 = Ingredient.new("Chocolate", d3, 40)
# i8 = Ingredient.new("Eggs", d3, 90)
# i9 = Ingredient.new("Flour", d3, 140)
#
# i10 = Ingredient.new("Milk", d4, 180)
# i11 = Ingredient.new("Cereal", d4, 170)
#
# i10 = Ingredient.new("Milk", d5, 185)
# i11 = Ingredient.new("Pretzels", d5, 175)

## Lyft

# d1 = Driver.new("Zenia")
# d2 = Driver.new("Ysenia")
# d3 = Driver.new("Xena")
#
# p1 = Passenger.new("Anna")
# p2 = Passenger.new("Bella")
# p3 = Passenger.new("Chaz")
#
# r1 = Ride.new(1, d1, p1)
# r2 = Ride.new(2, d1, p2)
# r3 = Ride.new(300, d2, p1)
# r4 = Ride.new(4, d2, p2)
# r5 = Ride.new(500, d2, p3)
# r6 = Ride.new(6, d3, p1)
# r7 = Ride.new(7, d3, p3)

## IMDB

# m1 = Movie.new("Arrested Development")
# m2 = Movie.new("Harry Potter")
# m3 = Movie.new("The Office")
#
# s1 = Show.new("Arrested Development")
# s2 = Show.new("The Office")
# s3 = Show.new("Veep")
# s4 = Show.new("Seinfeld")
#
# a1 = Actor.new("Daniel Radcliffe")
# a2 = Actor.new("Tony Hale")
# a3 = Actor.new("Julia Louis Dreyfus")
# a4 = Actor.new("Rainn Wilson")
# a5 = Actor.new("Emma Watson")
#
# c1 = Character.new("Harry Potter played by DR", a1)
# c2 = Character.new("Selina Meyer played by JLD", a3)
# c3 = Character.new("Elaine Benes played by JLD", a3)
# c4 = Character.new("Buster Bluth played by TH", a2)
# c5 = Character.new("Gary Walsh played by TH", a2)
# c6 = Character.new("Dwight Schrute played by RW", a4)
# c7 = Character.new("Hermione Granger played by EW", a5)
#
# r1 = Role.new("HP in HP movie", m2, c1)
# r2 = Role.new("Buster Bluth in AD show", s1, c4)
# r3 = Role.new("Buster Bluth in AD movie", m1, c4)
# r4 = Role.new("Gary Walsh in Veep show", s3, c5)
# r5 = Role.new("Elaine Benes in Seinfeld show", s4, c3)
# r6 = Role.new("Selina Meyer in Veep show", s3, c2)
# r7 = Role.new("Dwight Schrute in The Office show", s2, c6)
# r8 = Role.new("Dwight Schrute in The Office movie", m3, c6)
# r9 = Role.new("Hermione Granger in HP movie", m2, c7)
#
# ## crowdfunding
#
# u1 = User.new("Anna")
# u2 = User.new("Beth")
# u3 = User.new("Chad")
# u4 = User.new("Drew")
#
# pr1 = Project.new("Cure my cancer", 500, u1)
# pr2 = Project.new("Help my hair loss", 300, u2)
# pr3 = Project.new("Buy me a car", 1000, u3)
# pr4 = Project.new("I want shoes", 15500, u1)
#
# pl1 = Pledge.new(u1, pr3, 100)
# pl2 = Pledge.new(u1, pr2, 10)
# pl3 = Pledge.new(u4, pr1, 20)
# pl4 = Pledge.new(u3, pr2, 300)
# pl5 = Pledge.new(u2, pr3, 5600)
# pl6 = Pledge.new(u3, pr2, 150)
# pl7 = Pledge.new(u2, pr1, 50)

## Gym

l1 = Location.new("North")
l2 = Location.new("South")
l3 = Location.new("East")
l4 = Location.new("West")

t1 = Trainer.new("Zenia")
t2 = Trainer.new("Ysenia")
t3 = Trainer.new("Xena")
t4 = Trainer.new("Werner")

j1 = Job.new("Zenia works at South", l2, t1)
j2 = Job.new("Ysenia works at East", l3, t2)
j3 = Job.new("Xena works at West", l4, t3)
j4 = Job.new("Xena works at East", l3, t3)
j5 = Job.new("Xena works at North", l1, t3)
j6 = Job.new("Zenia works at West", l4, t1)
j7 = Job.new("Werner works at West", l4, t4)

c1 = Client.new("Anna")
c2 = Client.new("Beth")
c3 = Client.new("Chad")
c4 = Client.new("Drew")

c1.assign_trainer(t4)
c2.assign_trainer(t3)
c3.assign_trainer(t2)
c4.assign_trainer(t4)


Pry.start
