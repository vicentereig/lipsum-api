require 'test/unit'
require 'lipsum'

module LipsumAPI
  def send_request(opts)
    open("fixtures/lipsum_#{opts[:what]}.html")
  end
end

class LipsumTest < Test::Unit::TestCase
  def test_lipsums
    words = 10.lipsum_words
    assert_equal words.split.size, 10    
  end
end
