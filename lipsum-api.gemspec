spec = Gem::Specification.new do |s|
  s.name          = 'lipsum-api'
  s.version       = '0.1'
  s.summary       = 'Another Lipsum generator written in Ruby'  
  s.require_paths = ['lib']
  s.author        = "Vicente Reig Rincón de Arellano"
  s.email         = "vicente.reig@gmail.com"
  s.add_dependency("nokogiri")
  s.add_dependency("rest-client")
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end