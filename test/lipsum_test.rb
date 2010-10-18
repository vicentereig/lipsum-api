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

    paragraphs = 5.lipsum_paragraphs
    assert_equal paragraphs.size, 5

    lists = 5.lipsum_lists
    assert_equal lists.size, 5

    bytes = 3736.lipsum_bytes
    assert_equal bytes.size, 5
  end

  def test_not_lipsums
    begin
      10.lipsum_shits
    rescue
      assert true
    end
  end
end
