require 'thor'
require 'lipsum'

class LipsumApp < Thor
  map 'p' => :paragraphs
  map 'w' => :words
  map 'l' => :lists
  map 'b' => :bytes

  desc "paragraphs AMOUNT", "Downloads an AMOUNT of paragraphs from Lipsum.com"
  method_options  :start_with_lorem => :boolean
  def paragraphs(amount=0)
    amount = amount.to_i
    opts = do_config
    STDOUT.puts amount.lipsum_paragraphs opts if amount.to_i > 0
  end

  desc "words AMOUNT", "Downloads an AMOUNT of words from Lipsum.com"
  method_options  :start_with_lorem => :boolean
  def words(amount=0)
    amount = amount.to_i
    opts = do_config
    STDOUT.puts amount.lipsum_words  if amount.to_i > 0
  end

  desc "lists AMOUNT", "Downloads an AMOUNT of lists from Lipsum.com"
  method_options  :start_with_lorem => :boolean
  def lists(amount=0)
    amount = amount.to_i
    opts = do_config
    STDOUT.puts amount.lipsum_lists  if amount.to_i > 0
  end

  desc "bytes AMOUNT", "Downloads an AMOUNT of bytes from Lipsum.com"
  method_options  :start_with_lorem => :boolean
  def bytes(amount=0)
    amount = amount.to_i
    opts = do_config
    STDOUT.puts amount.lipsum_bytes  if amount.to_i > 0
  end

  private
  def do_config
    options.start_with_lorem? ? {:start_with_lorem => true}:{}
  end

end