# Declaring a Module called Shout
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words.upcase + "!!!" + " :)"
  end
end

# Driver code
p Shout.yell_angrily("this program does not work")
p Shout.yell_happily("Yey. I found the bug in my program!")