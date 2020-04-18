class Puppy
  
  attr_accessor :name, :age, :breed 
  
  def initialize(name, breed, age)
    binding.pry
    @name = name
    @age = age
    @breed = breed
  end
  
end