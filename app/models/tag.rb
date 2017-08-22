class Tag < ActiveRecord::Base

  has_many :todo_items, :through => :tag_items
  
end
