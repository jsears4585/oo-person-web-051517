require 'pry'

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize name
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def hygiene=(value)
    result = nil
    if value > 10
      result = 10
    elsif value < 0
      result = 0
    else
      result = value
    end
    @hygiene = result
  end

  def happiness=(value)
    result = nil
    if value > 10
      result = 10
    elsif value < 0
      result = 0
    else
      result = value
    end
    @happiness = result
  end

  def get_paid salary
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend person
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation person, topic
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
