class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.references :survey_type
      t.integer :scale_weightage
      t.text :merit_weightage
      t.references :political_party
      t.string :survey_scale

      t.timestamps
    end
    add_index :surveys, :survey_type_id
    add_index :surveys, :political_party_id
  end
end
