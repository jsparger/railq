class Create<%= @queue_class_name.pluralize %> < ActiveRecord::Migration
  def change
    create_table :<%= @queue_table_name %> do |t|
      t.references :<%= class_name %>, index: true, unique: true

      t.timestamps
    end
  end
end