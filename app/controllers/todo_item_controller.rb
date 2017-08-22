class TodoItemController < ApplicationController
   before_action :set_todo_lists, only: [:create, :destroy]
   
   def create
      @todo_item = @todo_lists.todo_items.new(todo_lists_params)
	  if @todo_item.save
	     redirect_to @todo_lists, notice: "Todo Item successfully added!"
	  else
	     redirect_to @todo_lists, alert: "Unable to add Todo Item"
	  end
   end
   
   def destroy
   end
end
