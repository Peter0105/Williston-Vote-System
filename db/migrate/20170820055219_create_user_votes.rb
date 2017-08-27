class CreateUserVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_votes do |t|
    	t.integer :user_id
    	t.integer :vote_id
    	t.timestamps
    end
  end
end
