class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.integer :user_id
      t.integer :friend_id
      t.string :title
      t.timestamps
    end
  end
end
