class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :gender
      t.integer :age
      t.string :first_name
      t.string :last_name
      t.references :User, index: true

      t.timestamps null: false
    end
    add_foreign_key :accounts, :Users
  end
end
