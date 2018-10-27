class Person
  @@people_count = 0

   def initialize(name)
     @name = name
     @@people_count += 1
   end

   def run
     puts "#{@name}가 달립니다!"
   end

   def drink
     puts "#{@name}가 물을 마십니다!"
   end

   def self.number_of_instance
     puts "#{@@people_count}명의 사람이 현재까지 생성"
   end
 end

person = Person.new("a")
person.run
person.drink
Person.number_of_instance

person2 = Person.new("b")
person2.run
person2.drink
Person.number_of_instance
