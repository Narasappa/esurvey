class CreateServeyConducters < ActiveRecord::Migration
  def change
    create_table :servey_conducters do |t|
      t.references :mla_town
      t.references :user
      t.references :survey

      t.timestamps
    end
    add_index :servey_conducters, :mla_town_id
    add_index :servey_conducters, :user_id
     add_index :servey_conducters, :survey_id
  end
end
