# RailQ

module RailQ
  
  def self.included(mod) # :nodoc:
    mod.extend(ClassMethods)
  end
  
  module ClassMethods
    def push(item)
      self.create!(self.queue_type => item)
    end
  
    def pop
      entry = self.first!
      entry.with_lock do
        entry.destroy
      end
      item = entry.get_item
    end
  end
  
end