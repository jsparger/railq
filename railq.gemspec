Gem::Specification.new do |s|
  s.name = "railq"
  s.version = "0.1.0"
  s.date = "2014-11-19"
  s.summary = "Generates queues for models"
  s.homepage = "http://github.com/jsparger/railq"
  s.description = "Generates queues for models"
  s.has_doc = false
  s.authors = ["John Sparger"]
  s.files = [
    "lib/rail_q/rail_q.rb",
    "lib/generators/rail_q/queue_generator.rb",
    "lib/generators/USAGE",
    "lib/generators/rail_q/templates/rail_q_migration.rb",
    "lib/generators/rail_q/templates/rail_q_model.rb"
  ]
  s.add_dependency("activerecord")
end