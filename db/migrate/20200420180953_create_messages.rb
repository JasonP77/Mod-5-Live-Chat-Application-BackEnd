class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :chatroom_id
      t.string :content
      t.string :time
      t.timestamps
    end
  end
end
