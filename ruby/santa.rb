class Santa
  def initialize
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy Holidays!!"
  end

  def eat_mil_and_cookies(cookie="choc-chip")
    puts "That was a good #{cookie} cookie!!"
  end
end

jeff = Santa.new
jeff.speak
jeff.eat_mil_and_cookies("blueberry-yogurt")