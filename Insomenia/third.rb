class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

end

sw = Person.new("sw", 27)
puts sw.name
puts sw.age
sw.name = "ws"
sw.age = 28
puts sw.name
puts sw.age
