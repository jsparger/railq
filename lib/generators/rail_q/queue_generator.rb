module RailQ
  
require 'rails/generators'
require 'rails/generators/migration'

class QueueGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
  # def manifest
  #   record do |m|
  #     queue_file_name = "#{file_name}_queue.rb"
  #     queue_class_name = "#{class_name}Queue"
  #     m.class_collisions class_path, class_name
  #     m.directory File.join('app/models', class_path)
  #     m.template 'rail_q_model.rb', File.join('app/models', class_path, queue_file_name)
  #
  #     m.migration_template 'rail_q_migration.rb', 'db/migrate', :assigns => {
  #       :migration_name => "Create#{queue_class_name.gsub(/::/, '')}"
  #     }, :migration_file_name => "create_#{file_path.gsub(/\//, '_')}"
  # end
  
  def self.next_migration_number(path)
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    end
  
  def make_names
    @queue_file_name = "#{file_name}_queue.rb"
    @queue_class_name = "#{class_name}Queue"
    @queue_table_name = @queue_class_name.pluralize.underscore
  end
  
  def generate_queue_model
    template "rail_q_model.rb", File.join("app/models", class_path, @queue_file_name)
  end
  
  def generate_queue_migration
    migration_template "rail_q_migration.rb", File.join("db/migrate", class_path, "create_#{@queue_table_name}.rb")
  end
  
end
end
