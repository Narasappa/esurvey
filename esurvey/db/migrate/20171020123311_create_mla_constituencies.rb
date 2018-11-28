class CreateMlaConstituencies < ActiveRecord::Migration
  def change
    create_table :mla_constituencies do |t|
      t.string :constituency_name
      t.string :state_id
      t.integer :district_id

      t.timestamps
    end
  end
end
