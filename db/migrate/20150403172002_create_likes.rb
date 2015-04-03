class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :pin_id

      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :pin_id
  end
end
