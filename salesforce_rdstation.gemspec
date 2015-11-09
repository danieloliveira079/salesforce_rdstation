Gem::Specification.new do |s|
  s.name        = 'salesforce_rdstation'
  s.version     = '0.0.1'
  s.date        = '2015-11-09'
  s.summary     = "Salesforce met RD Station!"
  s.description = "A small gem that import Leads from Railsforce App project into Salesforce"
  s.authors     = ["Daniel Oliveira Filho"]
  s.email       = 'daniel.oliveira079@gmail.com'
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
#  s.files         = `git ls-files`.split("\n")
  s.files    = Dir['lib/**/*.rb']
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  #s.add_dependency('restforce')

  s.homepage    = 'https://github.com/danieloliveira079/salesforce_rdstation'
  s.license     = 'MIT'
end
