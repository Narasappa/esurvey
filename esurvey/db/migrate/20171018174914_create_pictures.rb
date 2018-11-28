class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :imageable_id
      t.string :imageable_type
      t.attachment :picture

      t.timestamps
    end
  end
end
