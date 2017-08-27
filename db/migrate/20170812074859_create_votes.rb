class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
    	t.string :name
    	t.text :content
    	t.text :cl
    	t.integer :count
    	t.string :url

		t.timestamps
    end
  end
end
