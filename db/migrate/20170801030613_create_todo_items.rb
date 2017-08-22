class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :due_date
      t.string :task_title
      t.string :description
      t.references :todo_lists, index: true

      t.timestamps null: false
    end
    add_foreign_key :todo_items, :todo_lists
  end
end
