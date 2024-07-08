require "mintest/autorun"
require "encrypted_password"

class CheckForLetters < Minitest::Test
  def check_for_letters

    assert_equaal "<<@- :*~ !.:!<-#*; .*@?*~<~b ^@ =#:!!+|", process_string("<<@- :*~ !.:!<-#*; .*@?*~<~b ^@ =#:!!+|")
  def
