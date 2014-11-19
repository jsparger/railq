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
      item = self.first!
      item.with_lock do
        item.destroy
      end
    end
  end
  
end