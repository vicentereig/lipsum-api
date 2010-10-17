lipsum-api
======================================
A Lipsum.com interface written in Ruby
--------------------------------------
Yeah, another one. :-)

Installation
------------
``gem install lipsum-api``


Usage
-----
``
require 'rubygems'
require 'lipsum'

# Requiring 'lipsum' will add the next methods to any Fixnum:
#   LipsumAPI#lipsum_words -> "Lorem ipsum"
#   LipsumAPI#lipsum_paragraphs -> ["lipsum paragraph", ...]
#   LipsumAPI#lipsum_bytes "Lorem Ipsum"
#   LipsumAPI#lipsum_lists ["lipsum HTML list", ...]

puts 6.lipsum_words
puts 2.lipsum_paragraphs :start_with_lorem => true
``