# your code goes here
#co-coder: Locallize (Fill) 

require 'pry'
class Person
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def happiness
    if @happiness >= 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
    @happiness
  end

  def hygiene
    if @hygiene >=10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    @hygiene
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
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness = self.happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness = self.happiness + 3
    name.happiness = name.happiness + 3
    "Hi #{name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness = person.happiness - 2
      self.happiness = self.happiness - 2
      'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      person.happiness = person.happiness + 1
      self.happiness = self.happiness + 1
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

end
