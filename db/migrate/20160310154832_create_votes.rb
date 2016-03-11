class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :upvote
      t.integer :downvote
      t.integer :user_id
      t.integer :answer_id
      t.timestamps(null: false)
    end
    add_index :votes, :answer_id
    add_index :votes, :user_id
  end
end
