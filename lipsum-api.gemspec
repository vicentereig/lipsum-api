Gem::Specification.new do |s|
  s.name          = 'lipsum-api'
  s.version       = '0.1'
  s.summary       = 'Another Lipsum generator written in Ruby'
  s.require_paths = %w[lib]
  s.author        = "Vicente Reig Rincón de Arellano"
  s.email         = "vicente.reig@gmail.com"
  s.add_dependency("nokogiri")
  s.add_dependency("rest-client")
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
  
  s.files = %w[
    lib/lipsum.rb
    test/fixtures/lipsum_bytes.html
    test/fixtures/lipsum_words.html
    test/fixtures/lipsum_lists.html
    test/fixtures/lipsum_paragraphs.html
    test/lipsum_test.rb
    Gemfile
    LICENSE
    README
    Rakefile
  ]
end