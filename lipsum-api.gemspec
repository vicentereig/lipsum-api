Gem::Specification.new do |s|
  s.name               = 'lipsum-api'
  s.homepage           = 'http://github.com/vicentereig/lipsum-api'
  s.platform           = Gem::Platform::RUBY
  s.version            = '0.4'
  s.summary            = 'Another Lipsum generator written in Ruby'
  s.require_paths      = %w[lib]
  s.author             = "Vicente Reig Rincón de Arellano"
  s.email              = "vicente.reig@gmail.com"
  s.test_files         = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
  s.bindir             = 'bin'
  s.executables        = ['lipsum']
  s.default_executable = 'lipsum'

  s.add_runtime_dependency("thor")
  s.add_runtime_dependency("nokogiri")
  s.add_runtime_dependency("rest-client")
  s.add_development_dependency("rake")
  s.add_development_dependency("bundler")

  s.files = %w[
    bin/lipsum
    lib/lipsum.rb
    test/fixtures/lipsum_bytes.html
    test/fixtures/lipsum_words.html
    test/fixtures/lipsum_lists.html
    test/fixtures/lipsum_paragraphs.html
    test/lipsum_test.rb
    Gemfile
    LICENSE
    README.markdown
    Rakefile
  ]
end
