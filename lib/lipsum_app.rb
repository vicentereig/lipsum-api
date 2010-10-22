require 'rubygems'
require 'thor'
require 'lipsum'

class LipsumApp < Thor
  map 'p' => :paragraphs
  map 'w' => :words
  map 'l' => :lists
  map 'b' => :bytes

  desc "paragraphs AMOUNT", "Downloads an AMOUNT of paragraphs from Lipsum.com"
  method_options  :start_with_lorem, :type => :boolean
  def paragraphs(amount=0)
    amount.lipsum_paragraphs method_options if amount > 0
  end

  desc "words AMOUNT", "Downloads an AMOUNT of words from Lipsum.com"
  method_options  :start_with_lorem, :type => :boolean
  def words(amount=0)
    amount.lipsum_words method_options if amount > 0
  end

  desc "lists AMOUNT", "Downloads an AMOUNT of lists from Lipsum.com"
  method_options  :start_with_lorem, :type => :boolean
  def lists(amount=0)
    amount.lipsum_lists method_options if amount > 0
  end

  desc "bytes AMOUNT", "Downloads an AMOUNT of bytes from Lipsum.com"
  method_options  :start_with_lorem, :type => :boolean
  def bytes(amount=0)
    amount.lipsum_bytes method_options if amount > 0
  end

end