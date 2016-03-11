class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :answer_id
      t.integer :user_id
      t.timestamps(null: false)
    end
    add_index :comments, :answer_id
    add_index :comments, :user_id
  end
end
