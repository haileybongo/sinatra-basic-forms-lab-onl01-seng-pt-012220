class Puppy
  
  attr_accessor :name, :age, :breed 
  
  def initialize(name, age, breed)
    binding.pry
    @name = name
    @age = age
    @breed = breed
  end
  
end