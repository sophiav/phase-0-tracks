# # Declaring a Module called Shout
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words.upcase + "!!!" + " :)"
#   end
# end

# # Driver code
# p Shout.yell_angrily("this program does not work")
# p Shout.yell_happily("Yey. I found the bug in my program!")


# Declaring a Module called Shout
module Shout
  def yell_angrily(words)
    words + "!!!" 
  end

  def yell_happily(words)
    words.upcase + "!!!" + " :)"
  end
end

# Declare 2 classes:
class Coach
  include Shout
end

class Child
  include Shout
end

# Driver code
coach = Coach.new
p coach.yell_angrily("Go get that ball")
p coach.yell_happily("scooooorreeeee")

child = Child.new
p child.yell_angrily("I don't want to sleep now")
p child.yell_happily("i got some ice-cream")