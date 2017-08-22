class CreateTagItems < ActiveRecord::Migration
  def change
    create_table :tag_items do |t|

      t.timestamps null: false
    end
  end
end
