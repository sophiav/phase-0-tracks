# Virus Predictor

# I worked on this challenge [by myself, with: Jessica Ellison].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Require is used in an absolute path and require_relative is used to require a file relative to the file we're loading from.

require_relative 'state_data'

class VirusPredictor

  # sets the state (attributes) of a new VirusPredictor instance 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # input: (population density, population and state) -- removed those when we re-factored
  # output: returns predicted deaths and speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # provides a way to take in a hash and output a report on on the hash's data
  def self.state_predictor(hash_name)
   hash_name.each do |state, hash|
   state_predictor = VirusPredictor.new(state, hash_name[state][:population_density], hash_name[state][:population])
   state_predictor.virus_effects
   end
  end

  private

  # input: takes parameters of population density as a float, population as an integer and state as a string. -- removed those when we re-factored
  # output: determines the predicted deaths and returns the statement of how many people will be lost in outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiply_factor = 0.4
      # number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      multiply_factor = 0.4
      # number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      multiply_factor = 0.4
      # number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      multiply_factor = 0.4
      # number_of_deaths = (@population * 0.1).floor
    else
      multiply_factor = 0.4
      # number_of_deaths = (@population * 0.05).floor  
    end

    number_of_deaths = (@population * multiply_factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # input: parameters of population density as a float and state as a string -- removed those when we re-factored
  # output: determines the speed of the spread and prints a statement with how long it will take to spread across the state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA.each do |state, data_hash|
#   state_predictor = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
#   state_predictor.virus_effects
# end

VirusPredictor.state_predictor(STATE_DATA)

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# 1. The STATE_DATA hash is a nested hash.
# For the first part, it’s using state names as strings for the keys and assigns a value(a hash) to them using the hash rocket notation. Then inside the nested hash the key value pairs are defined using symbols for the keys and numbers for their associated values.

# 2. require_relative is used when the location of the file we are loading is relative to the file we are loading it from. 
# require on the other hand is used to require gems or other libraries that have an absolute path

# 3. Depending on what we want to do we can select a different iterator to iterate through a hash. Aside from .each, there’s .map (used to transform a hash), .select(used to return a new hash with all the elements of the original hash which return true following some block criteria we passed), etc.

# 4. The variables passed as arguments inside the 2 method calls in virus_effects were references to the instance variables defined in the initialize method. So given that those instance variables, by nature of instance variables, were already available to be access and used inside the 2 individual methods to provide the required functionality we did not need to pass them as parameters when calling those methods inside the virus_effects method. In this case we could refactor the 2 method calls inside virus_effects by removing their arguments (the instance variables passed) and also modifying those methods below by removing their parameters from the method definition.

# 5. Working with the example of class methods was cool and since we did not had the chance to work with that before it was great to use it in an example here (as an extra bonus task) and see how we could refactor our code by using a class method to define a set of actions that can provide more flexibility for future functionality.


