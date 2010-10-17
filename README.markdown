A Lipsum.com interface written in Ruby
======================================

Yeah, another one. :-)

Installation
------------
``gem install lipsum-api``


Usage
-----
Requiring lipsum will add the next methods to any Fixnum:
*  LipsumAPI#lipsum_words -> "Lorem ipsum"
*  LipsumAPI#lipsum_paragraphs -> ["lipsum paragraph", ...]
*  LipsumAPI#lipsum_bytes "Lorem Ipsum"
*  LipsumAPI#lipsum_lists ["lipsum HTML list", ...]

``require 'rubygems'
require 'lipsum'

puts 6.lipsum_words
puts 2.lipsum_paragraphs :start_with_lorem => true``