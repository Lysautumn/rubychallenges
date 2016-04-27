class Pet
  attr_accessor :name, :speak
end

class Cat < Pet
end


class Dog < Pet
end


class Hamster < Pet
end


my_cat = Cat.new
my_cat.name = "Scout"
catname = my_cat.name
my_cat.speak = "Mew"
catspeak = my_cat.speak
my_dog = Dog.new
my_dog.name = "Toby"
dogname = my_dog.name
my_dog.speak = "Woof"
dogspeak = my_dog.speak
my_hamster = Hamster.new
my_hamster.name = "Frodo"
hamstername = my_hamster.name
my_hamster.speak = "Squeak"
hamsterspeak = my_hamster.speak
puts "#{catname} says #{catspeak}, #{dogname} says #{dogspeak}, and #{hamstername} says #{hamsterspeak}"
