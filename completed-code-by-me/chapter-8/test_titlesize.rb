class String
  def titlesize
    self.gsub(/(\A|\s)\w/){ |letter| letter.upcase }
  end
end

require 'test/unit'

class TestTitleSize < Test::Unit::TestCase
  def test_basic
    assert_equal("This Is A Test", "this is a test".titlesize)
    assert_equal("Another Test 1234", "another test 1234".titlesize)
    assert_equal("We're Testing", "We're testing".titlesize)
  end
end