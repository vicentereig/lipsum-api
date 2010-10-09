require 'rubygems'
require 'nokogiri'
require 'rest-client'

module LipsumAPI
  
  LIPSUM_URL = 'http://lipsum.com/feed/html'      
  
  def method_missing(method, *args)
    results = []
    if method.to_s =~ /^lipsum_(.*)/ 
      opts = (args.first.respond_to? :merge)?args.first: {}
      opts.merge!(:what => $1) if ["paragraphs", "lists", "words", "bytes"].include?($1)
      opts.merge!(:amount => self) if self.is_a?(Fixnum)
      plain_doc = perform_request opts
      parse_response(plain_doc) do |element|
          results << element.inner_text
      end      
      results = results.first if opts[:what] == 'words'
      results
    end
  end
  
  def parse_response(plain_doc)
    doc = Nokogiri::HTML(plain_doc)
    doc.search('#lipsum p').each { |element|
      yield element
    }
  end
  
  def perform_request(opts)
    opts.merge!( :start => 'yes' ) if opts.delete( :start_with_lorem )
    send_request(opts)
  end
  
  def send_request(opts)     
    begin
      RestClient.post LIPSUM_URL, opts
    rescue
      puts "some error with inet connection =:)"
    end
  end

end

class Fixnum
  include LipsumAPI
end