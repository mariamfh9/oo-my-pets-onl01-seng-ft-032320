require 'pry'

class Owner
  attr_accessor :pets
  attr_reader :name, :species 
  
  @@all = []
  
  def initialize(name, species = "human")
    @species = species
    @name = name
    @pets = []
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def say_species
    return "I am a #{@species}."
  end 
  
   def self.count 
    self.all.length 
  end 
  
  def self.reset_all 
    self.all.clear
  end 
  
  def cats
    Cat.all.select {|cat| self == cat.owner} 
    @pets.select {|pet| pet.is_a? Cat} 
  end 
  
  def dogs
   Dog.all.select {|dog| self == dog.owner} 
    @pets.select {|pet| pet.is_a? Dog} 

  end 
  
  def buy_cat(name)
    owner_cat = Cat.new(name, self)
     #binding.pry
  end 
  
  def buy_dog(name)
    owner_dog = Dog.new(name, self)
  end 
  
  def walk_dogs 
<<<<<<< HEAD
    dogs = self.dogs
    dogs.each do |dog|
=======
    self.pets.each do |dog|
>>>>>>> 63b658b2d2e51fd4d7342874e79f7870419581dc
      dog.mood = 'happy'
    end 
  end 
    
  def feed_cats
<<<<<<< HEAD
    cats = self.cats
    cats.each do |cat|
=======
    self.pets.each do |cat|
>>>>>>> 63b658b2d2e51fd4d7342874e79f7870419581dc
      cat.mood = 'happy'
    end 
  end 
  
  def sell_pets
<<<<<<< HEAD
    pets = self.dogs + self.cats
     pets.each do |pet|
      pet.mood = 'nervous'
      pet.owner = nil
    end 
   end 
  
  
  def list_pets 
    num_cats = self.cats.size
    num_dogs = self.dogs.size
    #num_dogs = dogs.length
    #num_cats = cats.length
 
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end 
  
=======
    self.pets.each do |pet|
      pet.mood = 'nervous'
    end 
   
  end 
  
  def list_pets 
     if self.pets.is_a? Dog 
       num_dogs = Dog.all.length
     else 
       num_cats = Cat.all.length
     end 
    
    puts "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end 
  
 
>>>>>>> 63b658b2d2e51fd4d7342874e79f7870419581dc

end 