class Astronaut
  attr_accessor :health
  attr_accessor :username
  attr_accessor :role
  attr_accessor :music_prefernce
  attr_accessor :diet_preference

  def initialize(health, username, role, music_prefernce, diet_preference)
    @health = health
    @username = username
    @role = role
    @music_prefernce = music_prefernce
    @diet_preference = diet_preference
  end 
end
#   def health
#     @health
#   end
#   def username
#     @username
#   end
#   def role
#     @role
#   end
#   def music_prefernce
#     @music_prefernce
#   end
#   def diet_preference
#     @diet
#   end
# end

astronaut_1 = Astronaut.new
astronaut_1.username = "#{their_name}"
pp 
