require 'pry'
class Person
#attr_writer
attr_accessor :hygiene, :bank_account, :happiness
attr_reader :name

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness = 8
  @hygiene = 8
end

def happiness=(happiness)
  @happiness = happiness
  if @happiness > 10
    @happiness = 10
  elsif @happiness < 0
    @happiness = 0
  end
  end

def hygiene=(hygiene)
  @hygiene = hygiene
  if @hygiene > 10
    @hygiene = 10
  elsif @hygiene < 0
    @hygiene = 0
end
end

def happy?
return true if @happiness > 7
false
end

def clean?
return true if @hygiene > 7
false
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end

def take_bath
  self.hygiene=(hygiene + 4)
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene=(hygiene - 3)
    self.happiness=(happiness + 2)
  return '♪ another one bites the dust ♫'
end

def call_friend(friend)
friend.happiness=(friend.happiness + 3)
self.happiness=(happiness + 3)
return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)

case topic

when topic = "politics"
  person.happiness=(person.happiness - 2)
  self.happiness=(happiness - 2)
  "blah blah partisan blah lobbyist"

when topic = "weather"
  self.happiness=(happiness + 1)
  person.happiness=(person.happiness + 1)
  "blah blah sun blah rain"

else
  "blah blah blah blah blah"
end
end
end

# person = new Person('vera')
# person2 = new Person('fred')
# person.call_friend(person2)
