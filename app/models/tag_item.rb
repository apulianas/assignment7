class TagItem < ActiveRecord::Base

   belongs_to :todo_items
   belongs_to :tags
   
end
