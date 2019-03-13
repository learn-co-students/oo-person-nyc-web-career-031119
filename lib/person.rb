class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    @happiness = num
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(num)
    @hygiene = num
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
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
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene=(@hygiene)
    @happiness += 2
    self.happiness=(@happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(callee)
    @happiness += 3
    self.happiness=(@happiness)
    callee.happiness += 3
    "Hi #{callee.name}! It's #{name}. How are you?"
  end

  def start_conversation(person, topic)

    if topic == "politics"
      person.happiness -= 2
      @happiness -= 2
      self.happiness=(@happiness)
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      person.happiness += 1
      @happiness += 1
      self.happiness=(@happiness)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
