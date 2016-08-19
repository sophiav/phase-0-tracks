# Declare a Flight module:
module Flight
  def take_off(altitude)
    puts "Take off and ascending until reaching #{altitude}..."
  end
end

# Add module to class declarations
class Bird
  include Flight
end

class Plane
  include Flight
end

# Driver code
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)

