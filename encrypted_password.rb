module Locks
  
  door_names = [
    "West Gate",
    "East Gate",
    "South Gate"
  ]
    
  door = door_names.sample
  pp "_______________#{door}________________"
  pp "                                      "

  class DoorLocks

    # password library

  passwords = [
    "The answer lies in the truth",
    "The truth will set you free",
    "Freedom is balancing knowledge and will"
  ]

  secret_password = passwords.sample

  #- symbol conversion chart:

  # ~ = a
  # _ = b
  # ? = c
  # : = d
  # ! = e
  # | = f
  # . = g
  # & = h
  # @ = i
  # ; = k
  # < = l
  # = = m
  # * = n
  # # = o
  # / = q
  # + = r
  # ^ = s
  # % = t
  # $ = u
  # - = w
  # " " = >

  encrypt1 = secret_password.downcase
  encrypt2 = encrypt1.gsub("a", "~")
  encrypt3 = encrypt2.gsub("e", "!")
  encrypt4 = encrypt3.gsub("i", "@")
  encrypt5 = encrypt4.gsub("o", "#")
  encrypt6 = encrypt5.gsub("u", "$")
  encrypt7 = encrypt6.gsub("t", "%")
  encrypt8 = encrypt7.gsub("s", "^")
  encrypt9 = encrypt8.gsub("h", "&")
  encrypt10 = encrypt9.gsub("n", "*")
  encrypt11 = encrypt10.gsub("w", "-")
  encrypt12 = encrypt11.gsub("r", "+")
  encrypt13 = encrypt12.gsub("q", "/")
  encrypt14 = encrypt13.gsub("f", "|")
  encrypt15 = encrypt14.gsub("m", "=")
  encrypt16 = encrypt15.gsub("k", ";")
  encrypt17 = encrypt16.gsub("d", ":")
  encrypt18 = encrypt17.gsub("c", "?")
  encrypt19 = encrypt18.gsub("g", ".")
  encrypt20 = encrypt19.gsub("l", "<")
  encrypt21 = encrypt20.reverse
  pp " CODE:   #{encrypt21}      "

pp "_____________________________________________"
pp "                                             "
pp "Here is my conversion chart to help you figure it out!"
pp "_____________________________________________"
pp
pp " symbol conversion chart:"
pp "                                             "
pp " _________________ "
pp " |    ~ = a      | "       
pp " |    _ = b      | "       
pp " |    ? = c      | "       
pp " |    : = d      | "       
pp " |    ! = e      | "        
pp " |    | = f      | "       
pp " |    . = g      | "        
pp " |    & = h      | "        
pp " |    @ = i      | "        
pp " |    = = m      | " 
pp " |    * = n      | "
pp " |    # = o      | "
pp " |    / = q      | "
pp " |    + = r      | "
pp " |    ^ = s      | "
pp " |    % = t      | "
pp " |    $ = u      | "
pp " |    ' ' = >    | "
pp " ----------------- "

pp "                            "
submission = gets


if secret_password = submission
    pp "Excellent work! Wish I had fingers."
  else
    pp "The security is going to think we are breaking in. Try again."
  end

  end #class
end #module



  
