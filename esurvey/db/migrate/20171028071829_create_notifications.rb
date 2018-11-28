class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :event
      t.integer :sender_id
      t.string :receiver_id
      t.boolean :is_read
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
