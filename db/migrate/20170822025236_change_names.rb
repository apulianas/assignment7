class ChangeNames < ActiveRecord::Migration
  def change
  rename_column :todo_lists, :list_due_date, :due_date
  end
end
