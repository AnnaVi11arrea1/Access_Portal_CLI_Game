require "minitest/autorun"
require_relative "../encrypted_password"

class TestGame < Minitest::Test
  def setup
    @Locks = Locks.new
  end

  def test_encrypted
    assert_match(/\A\$\d{2}\$[A-Za-z0-9]{53}\Z/, @nLocks.encrypt21("password"))
  end
end
