# private & public
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  public
  def run
    "#{@age}살 #{@name}가 달립니다"
  end

  def check_password(password)
    if password == your_password
      puts "성공적으로 로그인 하셨습니다"
    else
      puts "비밀번호가 틀렸습니다"
    end
  end

  private
  def your_password
    @password = "123456"
  end
end

sw = Person.new("sw", 27)
puts sw.run
puts sw.check_password("123456")
