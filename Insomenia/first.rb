#class instance # inheritance
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
     #Person이라는 class 전체에 적용하는 건 self 사용가능
     puts "#{@@people_count}명의 사람이 현재까지 생성"
   end
 end

# person = Person.new("a")
# person.run
# person.drink
# Person.number_of_instance
#
# person2 = Person.new("b")
# person2.run
# person2.drink
# Person.number_of_instance

class SoccerMan < Person #상속
  def run #위에 있는 run을 덮어씌움
    puts "#{@name}가 축구공을 차면서 달립니다."
    super #super를 기점으로 위에 있는 run을 가져옴
  end

   def kick
     puts "#{@name}가 축구공을 찼습니다!"
   end
 end

class BasketBallMan < Person
  def run
    puts "#{@name}가 드리블을 하면서 달립니다."
  end

  def shot
    puts "#{@name}가 농구공을 던졌습니다!"
  end
end

ronaldo = SoccerMan.new("호날두")
ronaldo.run
ronaldo.kick

jordan = BasketBallMan.new("조던")
jordan.run
jordan.shot
