class TodoList < ActiveRecord::Base
  #attr_accessor :list_name
  belongs_to :users
  has_many :todo_items, foreign_key: :due_date
  accepts_nested_attributes_for :todo_items

  def new(params = {})
    #@list_name = params.fetch(:list_name)
    #@due_date = params.fetch(:due_date)[2]
  end

  default_scope { order(due_date: :asc) }
end
