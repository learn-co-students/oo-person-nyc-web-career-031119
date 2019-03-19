# your code goes here
class Person
  attr_reader :name, :hygiene, :bank_account, :happiness
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end
  def clean?
   if @hygiene > 7
     true
   else
     false
   end
  end
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  def bank_account=(deposit)
    @bank_account += deposit
  end
  def happiness=(smile)
    if smile >= 10
      @happiness = 10
    elsif smile <= 0
      @happiness = 0
    else
      @happiness = smile
    end
  end
  def hygiene=(cleaness)
    if cleaness >= 10
      @hygiene = 10
    elsif cleaness <= 0
      @hygiene = 0
    else
      @hygiene = cleaness
    end
  end
  def take_bath
    self.hygiene = @hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.happiness = @happiness + 2
    self.hygiene = @hygiene - 3
    return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    self.happiness = @happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end
  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = @happiness - 2
      person.happiness = person.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      person.happiness = person.happiness + 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
