class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :list_name
      t.string :list_due_date
      t.references :users, index: true

      t.timestamps null: false
    end
    add_foreign_key :todo_lists, :users
  end
end
