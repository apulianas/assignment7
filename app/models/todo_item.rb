class TodoItem < ActiveRecord::Base
  belongs_to :todo_lists, class_name: 'TodoList'
  has_many :tags, :through => :tag_items
  
  default_scope { order(due_date: :asc) }
  
end
