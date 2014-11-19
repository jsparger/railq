Gem::Specification.new do |s|
  s.name = "railq"
  s.version = "0.1.01"
  s.date = "2014-11-19"
  s.summary = "Generates queues for models"
  s.homepage = "http://github.com/jsparger/railq"
  s.description = "Generates queues for models"
  s.authors = ["John Sparger"]
  s.files = `git ls-files`.split("\n")
  s.add_dependency("activerecord")
end