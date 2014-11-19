require 'rail_q'
class <%= @queue_class_name %> < ActiveRecord::Base
  belongs_to :<%= class_name %>
  include RailQ
  
  def self.queue_type
    return :<%= class_name %>
  end
  
  def get_item
    return self.<%= class_name %>
  end
end