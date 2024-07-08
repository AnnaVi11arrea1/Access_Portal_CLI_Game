

pp"                     `. ___                                             "
pp"                    __,' __`.                _..----...._____           "
pp"       __...--.'``;.   ,.   ;``--..__     .'    ,-._    _.-'            "
pp"  _..-''-------'   `'   `'   `'     O ``-''._   (,;') _,'               "
pp",'________________                          \\`-._`-','                 "
pp" `._              ```````````------...___   '-.._'-:                    "
pp"    ```--.._      ,.                     ````--...__\\-.                "
pp"            `.--. `-`                       ____    |  |`               "
pp"              `. `.                       ,'`````.  ;  ;`               "
pp"                `._`.        __________   `.      \\'__/`               "
pp"                  `-:._____/______/___/____`.     \\ `                  "
pp"                              |       `._    `.    \\                   "
pp"                               `._________`-.   `.   `.___              "
pp"                                                 `------'`'             "

# ASCII art from https://www.asciiart.eu/space/spaceships
# I modified it slighlty

text_divider = "===========================================----------- - - - - - -"
mini_divider = "- - - - - - - - - - - - - - - - - - - - "

pp text_divider

pp "Hello and welcome to the Space One Portal! What is your name?"
their_name = gets
pp "Welcome #{their_name.chomp}! You are slated to launch within the next hour."


pp "Are you ready to go?"

answer = gets

pp "Perfect"
pp "My name is Bojangles III 1.0, I am programmed to assit with difficult mathematical operations on the team."
pp "are you good at math?"

math = gets 

pp "Currently, we are stuck outside mission control."

pp "But I think we will make a great team."
pp "The door locks run on a private network, and I do not have fingers to manually enter the code. It looks like you have hands with fingers! Is this true? (yes or no)"

fingers = gets

if fingers == "yes"
  pp "Excellent, plesae assist"
else
  pp "Do your best, you have a better chance than me!"
end

pp text_divider
pp 
pp "==============================================="
pp "||     DECIPHER THE DOOR CODE TO ENTER       ||"
pp "==============================================="
pp 
pp text_divider

require_relative "encrypted_password"
include Locks

#---------------------------------------------------------------------------------------------

pp text_divider
pp "Great work! Now, as we head to the docks, I'm going to ask you some questions."
pp text_divider


class Astronaut
  attr_accessor :health
  attr_accessor :username
  attr_accessor :role
  attr_accessor :music_prefernce
  attr_accessor :diet_preference

  def initialize(health, username, role)
    @username = username
    @role = role
    @health = health
  end 
end



astronaut_1 = Astronaut.new("Empy", "Empty", "Empty")
astronaut_1.username = "#{their_name}"
pp "Name: #{astronaut_1.username.chomp}"

pp mini_divider

pp "Have you passed all your physical exams for this mission? (y or n)"
physical = gets
if physical.include?("y")                                      #health
  pp "I'll note that in your records"
  astronaut_1.health = 100
  pp "Health: #{astronaut_1.health}"
else
  pp "We'll work on finishing that."
  astronaut_1.health = 50
  pp "Health: #{astronaut_1.health}"
end

pp mini_divider

pp "Do you accept your role as captain? (y or n)"
captain = gets
if captain.include?("y")                                       #role
  pp "Perfect, heres your badge."
  astronaut_1.role = "Captain"
  pp "Role: #{astronaut_1.role}"
elsif
  pp "First mate it is!"
  astronaut_1.role = "First Mate"
  pp "Role: #{astronaut_1.role}"
end

pp mini_divider

pp "Any special dietary needs?"                               # diet
diet = gets
astronaut_1.diet_preference = diet
pp "Diet: #{astronaut_1.diet_preference.chomp}"

pp mini_divider

pp "And lastly, what kind of music do you prefer?"
music = gets                                                  # music
astronaut_1.music_prefernce = music
pp "Music: #{astronaut_1.diet_preference.chomp}"

pp mini_divider
pp "I'll be sure not to blast that other stuff!"
pp "Lets review your chart to make sure we got everything."
pp  " STATS "
pp "Name: #{astronaut_1.username.chomp}"
pp "Health: #{astronaut_1.health}"
pp "Role: #{astronaut_1.role}"
pp "Diet: #{astronaut_1.diet_preference.chomp}"
pp "Music: #{astronaut_1.diet_preference.chomp}"


pp text_divider

pp "Does everything look good to you here? (y or n)"
good = gets
if good.include?("n")
  pp "What should we change? We can change everything but your health."
  pp "Type role, music, diet or name"
  change = gets
    if change.include?("role")
      pp "What do you really want your role to be"
      change = gets
      astronaut_1.role = change
      pp "Role updated"
    elsif change.include?("music") 
      pp "What do you want your prefered music to be?"
      change = gets
      astronaut_1.music_prefernce = change
      pp "Music updated"
    elsif change.include?("diet")
      pp "What do you prefer?"
      change = gets
      astronaut_1.diet_preference = change
      pp "Diet updated"
    elsif change.include?("name")
      "What should we call you then?"
      change = gets
      astronaut_1.username = change
      pp "Name updated"
    else
      pp "Please be more specific"
    end
else
    pp "Great, thanks for checking."
end

pp "Here is your updated info"

pp "Name: #{astronaut_1.username.chomp}"
pp "Health: #{astronaut_1.health}"
pp "Role #{astronaut_1.role}"
pp "Diet #{astronaut_1.diet_preference.chomp}"
pp "Music #{astronaut_1.music_prefernce.chomp}"
pp text_divider


pp "Alright here we are at the docking station! Oh no, this door is jammed..."
pp mini_divider
pp "I need you to enter the password so we can access the control panel to fix it."

pp text_divider

pp "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣄⡀⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠉⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⢀⣴⠶⣄⠀⠀⠀⢀⣀⣸⣇⣀⣀⣀⣀⣀⣀⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠸⣧⣀⣼⠃⠀⠀⢸⡏⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠀⠈⠉⠁⠀⠀⠀⢸⡇⠀⠀⠀⠐⣿⠆⠀⠀⠀⠀⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠿⠄⠀⠀⠀⠀⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢸⣧⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⣿⣿⣿⣿"
pp "⣿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿"

# art is from https://emojicombos.com/locked-door-ascii-art
pp text_divider
pp 
pp "==============================================="
pp "||     DECIPHER THE DOOR CODE TO ENTER       ||"
pp "==============================================="
pp 
pp text_divider


require_relative "encrypted2"
include Locks2 



pp mini_divider
pp "That was a close one, thanks"

pp " ________________________"
pp "|      NEW SKILL!        |"
pp "|________________________|"

pp "Your coding skills have improved! Soon you will be a wizard!"

